import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'models.dart';

part 'amap_controller.dart';

typedef Future<void> _OnMapCreated(AmapController controller);

/// 高德地图 Widget
class AmapView extends StatefulWidget {
  const AmapView({
    Key key,
    this.onMapCreated,
    this.mapType,
    this.showZoomControl,
    this.showCompass,
    this.showScaleControl,
    this.zoomGesturesEnabled,
    this.scrollGesturesEnabled,
    this.rotateGestureEnabled,
    this.tiltGestureEnabled,
    this.zoomLevel, // todo 初始化没用
    this.centerCoordinate,
    this.markers,
    this.onMarkerClicked,
    this.onMapClicked,
    this.onMapMoveStart,
    this.onMapMoveEnd,
    this.maskDelay = const Duration(seconds: 0),
    this.mask,
  })  : assert(
          zoomLevel == null || (zoomLevel >= 3 && zoomLevel <= 19),
          '缩放范围为3-19',
        ),
        super(key: key);

  /// 地图创建完成回调
  final _OnMapCreated onMapCreated;

  /// 地图类型
  final MapType mapType;

  /// 是否显示缩放控件
  final bool showZoomControl;

  /// 是否显示指南针控件
  final bool showCompass;

  /// 是否显示比例尺控件
  final bool showScaleControl;

  /// 是否使能缩放手势
  final bool zoomGesturesEnabled;

  /// 是否使能滚动手势
  final bool scrollGesturesEnabled;

  /// 是否使能旋转手势
  final bool rotateGestureEnabled;

  /// 是否使能倾斜手势
  final bool tiltGestureEnabled;

  /// 缩放级别
  ///
  /// 地图的缩放级别一共分为 17 级，从 3 到 19. 数字越大，展示的图面信息越精细
  final double zoomLevel;

  /// 中心点坐标
  final LatLng centerCoordinate;

  /// 标记
  final List<MarkerOption> markers;

  /// 标识点击回调
  final OnMarkerClicked onMarkerClicked;

  /// 地图点击回调
  final OnMapClicked onMapClicked;

  /// 地图开始移动回调
  final OnMapMove onMapMoveStart;

  /// 地图结束移动回调
  final OnMapMove onMapMoveEnd;

  /// [PlatformView]创建时, 会有一下的黑屏, 这里提供一个在[PlatformView]初始化时, 盖住其黑屏
  /// 的遮罩, [maskDelay]配置延迟多少时间之后再显示地图, 默认不延迟, 即0.
  final Duration maskDelay;

  /// 遮盖地图层的widget
  final Widget mask;

  @override
  _AmapViewState createState() => _AmapViewState();
}

class _AmapViewState extends State<AmapView> {
  AmapController _controller;
  // _widgetLayer的存在是为了实现widget作为marker(或其他)而存在的. 添加widget作为marker后,
  // 会调用AmapViewState::setState, 然后等待一帧结束确认widget已经被渲染后再通过RepaintBoundary::toImage
  // 获取图片数据, 后面的流程和普通添加marker一样了.
  Widget _mask = Container();
  Widget _widgetLayer = Container();
  final _markerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _mask = FutureBuilder<bool>(
      future: Future.delayed(widget.maskDelay, () => false),
      initialData: true,
      builder: (context, snapshot) {
        return Visibility(
          visible: snapshot.data,
          child: widget.mask ??
              Container(
                color: Colors.white,
                child: Center(child: CupertinoActivityIndicator()),
              ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Stack(
        children: <Widget>[
          RepaintBoundary(key: _markerKey, child: _widgetLayer),
          FutureBuilder<com_amap_api_maps_AMapOptions>(
            future: _androidOptions(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return com_amap_api_maps_MapView_Android(
                  var2: snapshot.data,
                  onDispose: _onPlatformViewDispose,
                  onViewCreated: (controller) async {
                    _controller = AmapController.android(
                      controller,
                      this,
                      widget.onMapCreated,
                    );

                    final bundle = await android_os_Bundle.create();
                    await controller.onCreate(bundle);

                    await _initAndroid();
                    await bundle.release();
                  },
                );
              } else {
                return Center();
              }
            },
          ),
          _mask,
        ],
      );
    } else if (Platform.isIOS) {
      return Stack(
        children: <Widget>[
          RepaintBoundary(key: _markerKey, child: _widgetLayer),
          MAMapView_iOS(
            onDispose: _onPlatformViewDispose,
            onViewCreated: (controller) async {
              _controller = AmapController.ios(controller, this);

              await _initIOS();
              if (widget.onMapCreated != null) {
                await widget.onMapCreated(_controller);
              }
            },
          ),
          _mask,
        ],
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  Future<Uint8List> widgetToImageData(Widget marker) {
    final completer = Completer<Uint8List>();
    setState(() {
      _widgetLayer = marker;
    });

    // 等待一帧结束再获取图片数据
    WidgetsBinding.instance.addPostFrameCallback((duration) {
      RenderRepaintBoundary boundary =
          _markerKey.currentContext.findRenderObject();

      double pixelRatio = 1.0;
      if (Platform.isAndroid) {
        pixelRatio = MediaQuery.of(context).devicePixelRatio;
      } else if (Platform.isIOS) {
        // ios端的PlatformView的bug, 取了1.0密度的图片, 然后放大了devicePixelRatio的倍数
        pixelRatio = 1.0;
      }

      boundary
          .toImage(pixelRatio: pixelRatio)
          .then((image) => image.toByteData(format: ImageByteFormat.png))
          .then((byteData) => byteData.buffer.asUint8List())
          .then((data) => completer.complete(data));
    });

    return completer.future;
  }

  @override
  void dispose() {
    final isCurrentPlugin = (it) => it.tag == 'amap_map_fluttify';
    kNativeObjectPool
      ..where(isCurrentPlugin).forEach((it) => it.release())
      ..removeWhere(isCurrentPlugin);
    super.dispose();
  }

  Future<void> _onPlatformViewDispose() async {
    await _controller.dispose();
  }

  Future<com_amap_api_maps_AMapOptions> _androidOptions() async {
    final option = await createcom_amap_api_maps_AMapOptions__();
    if (widget.mapType != null) {
      await option.mapType(widget.mapType.index);
    }
    if (widget.showZoomControl != null) {
      await option.zoomControlsEnabled(widget.showZoomControl);
    }
    if (widget.showCompass != null) {
      await option.compassEnabled(widget.showCompass);
    }
    if (widget.showScaleControl != null) {
      await option.scaleControlsEnabled(widget.showScaleControl);
    }
    if (widget.zoomGesturesEnabled != null) {
      await option.zoomGesturesEnabled(widget.zoomGesturesEnabled);
    }
    if (widget.scrollGesturesEnabled != null) {
      await option.scrollGesturesEnabled(widget.scrollGesturesEnabled);
    }
    if (widget.rotateGestureEnabled != null) {
      await option.rotateGesturesEnabled(widget.rotateGestureEnabled);
    }
    if (widget.tiltGestureEnabled != null) {
      await option.tiltGesturesEnabled(widget.tiltGestureEnabled);
    }
    if (widget.centerCoordinate != null || widget.zoomLevel != null) {
      final latLng = await createcom_amap_api_maps_model_LatLng__double__double(
        widget.centerCoordinate?.latitude ?? 39.92,
        widget.centerCoordinate?.longitude ?? 116.46,
      );
      final cameraUpdate = await com_amap_api_maps_model_CameraPosition
          .fromLatLngZoom(latLng, widget.zoomLevel ?? 10);
      await option.camera(cameraUpdate);
    }
    return option;
  }

  Future<void> _initAndroid() async {
    if (widget.markers != null && widget.markers.isNotEmpty) {
      await _controller?.addMarkers(widget.markers);
    }
    if (widget.onMarkerClicked != null) {
      await _controller?.setMarkerClickedListener(widget.onMarkerClicked);
    }
    if (widget.onMapClicked != null) {
      await _controller?.setMapClickedListener(widget.onMapClicked);
    }
    if (widget.onMapMoveStart != null || widget.onMapMoveEnd != null) {
      await _controller?.setMapMoveListener(
        onMapMoveStart: widget.onMapMoveStart,
        onMapMoveEnd: widget.onMapMoveEnd,
      );
    }
  }

  Future<void> _initIOS() async {
    if (widget.mapType != null) {
      await _controller?.setMapType(widget.mapType);
    }
    if (widget.showZoomControl != null) {
      await _controller?.showZoomControl(widget.showZoomControl);
    }
    if (widget.showCompass != null) {
      await _controller?.showCompass(widget.showCompass);
    }
    if (widget.showScaleControl != null) {
      await _controller?.showScaleControl(widget.showScaleControl);
    }
    if (widget.zoomGesturesEnabled != null) {
      await _controller?.setZoomGesturesEnabled(widget.zoomGesturesEnabled);
    }
    if (widget.scrollGesturesEnabled != null) {
      await _controller?.setScrollGesturesEnabled(widget.scrollGesturesEnabled);
    }
    if (widget.rotateGestureEnabled != null) {
      await _controller?.setRotateGesturesEnabled(widget.rotateGestureEnabled);
    }
    if (widget.tiltGestureEnabled != null) {
      await _controller?.setTiltGesturesEnabled(widget.tiltGestureEnabled);
    }
    if (widget.zoomLevel != null) {
      await _controller?.setZoomLevel(widget.zoomLevel, animated: false);
    }
    if (widget.centerCoordinate != null) {
      await _controller?.setCenterCoordinate(
        widget.centerCoordinate.latitude,
        widget.centerCoordinate.longitude,
        animated: false,
      );
    }
    if (widget.markers != null && widget.markers.isNotEmpty) {
      await _controller?.addMarkers(widget.markers);
    }
    if (widget.onMarkerClicked != null) {
      await _controller?.setMarkerClickedListener(widget.onMarkerClicked);
    }
    if (widget.onMapClicked != null) {
      await _controller?.setMapClickedListener(widget.onMapClicked);
    }
    if (widget.onMapMoveStart != null || widget.onMapMoveEnd != null) {
      await _controller?.setMapMoveListener(
        onMapMoveStart: widget.onMapMoveStart,
        onMapMoveEnd: widget.onMapMoveEnd,
      );
    }
  }
}
