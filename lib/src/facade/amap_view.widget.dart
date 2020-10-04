import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'enums.dart';
import 'extensions.dart';
import 'models.dart';

part 'amap_controller.dart';
part 'map_delegates.dart';

typedef _OnMapCreated = Future<void> Function(AmapController controller);

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
    this.zoomLevel,
    this.centerCoordinate,
    this.tilt,
    this.bearing,
    this.markers,
    this.onMarkerClicked,
    this.onMapClicked,
    this.onMapMoveStart,
    this.onMapMoving,
    this.onMapMoveEnd,
    this.maskDelay = const Duration(seconds: 0),
    this.mask,
    this.autoRelease = true,
    this.gestureRecognizers,
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

  /// 倾斜度
  final double tilt;

  /// 地图朝向
  final double bearing;

  /// 标记
  final List<MarkerOption> markers;

  /// 标识点击回调
  final OnMarkerClicked onMarkerClicked;

  /// 地图点击回调
  final OnMapClicked onMapClicked;

  /// 地图开始移动回调
  final OnMapMove onMapMoveStart;

  /// 地图移动中回调
  final OnMapMove onMapMoving;

  /// 地图结束移动回调
  final OnMapMove onMapMoveEnd;

  /// [PlatformView]创建时, 会有一下的黑屏, 这里提供一个在[PlatformView]初始化时, 盖住其黑屏
  /// 的遮罩, [maskDelay]配置延迟多少时间之后再显示地图, 默认不延迟, 即0.
  final Duration maskDelay;

  /// 遮盖地图层的widget
  final Widget mask;

  /// 是否在dispose时释放amap_map_fluttify插件所创建的原生对象
  ///
  /// 如果你在多个页面有地图widget时, 就设置为false, 防止第二个(以及后续的)地图页面dispose时,
  /// 释放掉了第一个地图页面创建的原生对象, 导致第一个地图所有方法都失效. 在所有地图页面都被pop时,
  /// 调用[releaseAmapObjectPool]来释放掉在地图页面期间创建的原生对象.
  @Deprecated('已无需使用')
  final bool autoRelease;

  /// 传递给PlatformView的手势识别器
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;

  @override
  _AmapViewState createState() => _AmapViewState();
}

class _AmapViewState extends State<AmapView> {
  AmapController _controller;

  Widget _mask = Container();
  Widget _widgetLayer;

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
    final centerCoordinate =
        widget.centerCoordinate ?? LatLng(39.91667, 116.41667);
    if (Platform.isAndroid) {
      return ScopedReleasePool(
        tag: 'amap_map_fluttify',
        child: Stack(
          children: <Widget>[
            if (_widgetLayer != null) _widgetLayer,
            com_amap_api_maps_TextureMapView_Android(
              params: {
                'mapType': widget.mapType?.index,
                'showZoomControl': widget.showZoomControl,
                'showCompass': widget.showCompass,
                'showScaleControl': widget.showScaleControl,
                'zoomGesturesEnabled': widget.zoomGesturesEnabled,
                'scrollGesturesEnabled': widget.scrollGesturesEnabled,
                'rotateGestureEnabled': widget.rotateGestureEnabled,
                'tiltGestureEnabled': widget.tiltGestureEnabled,
                'zoomLevel': widget.zoomLevel,
                'centerCoordinateLatitude': centerCoordinate.latitude,
                'centerCoordinateLongitude': centerCoordinate.longitude,
                'tilt': widget.tilt,
                'bearing': widget.bearing,
              },
              gestureRecognizers: widget.gestureRecognizers,
              onDispose: _onPlatformViewDispose,
              onViewCreated: (controller) async {
                _controller = AmapController.android(controller, this);

                final bundle = await android_os_Bundle.create();
                await controller.onCreate(bundle);

                await _initAndroid();
                if (widget.onMapCreated != null) {
                  // 主动延迟300毫秒, 等待地图加载完成, 防止在onMapCreated里调用方法时空指针
                  // ignore: unawaited_futures
                  Future.delayed(Duration(milliseconds: 300), () => 0)
                      .then((value) => widget.onMapCreated(_controller));
                }
                await bundle.release__();
              },
            ),
            _mask,
          ],
        ),
      );
    } else if (Platform.isIOS) {
      return ScopedReleasePool(
        tag: 'amap_map_fluttify',
        child: Stack(
          children: <Widget>[
            if (_widgetLayer != null) _widgetLayer,
            MAMapView_iOS(
              params: {
                'mapType': widget.mapType?.index,
                'showZoomControl': widget.showZoomControl,
                'showCompass': widget.showCompass,
                'showScaleControl': widget.showScaleControl,
                'zoomGesturesEnabled': widget.zoomGesturesEnabled,
                'scrollGesturesEnabled': widget.scrollGesturesEnabled,
                'rotateGestureEnabled': widget.rotateGestureEnabled,
                'tiltGestureEnabled': widget.tiltGestureEnabled,
                'zoomLevel': widget.zoomLevel,
                'centerCoordinateLatitude': centerCoordinate.latitude,
                'centerCoordinateLongitude': centerCoordinate.longitude,
                'tilt': widget.tilt,
                'bearing': widget.bearing,
              },
              gestureRecognizers: widget.gestureRecognizers,
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
        ),
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  Future<List<Uint8List>> widgetToImageData(List<Widget> markerList) {
    if (!mounted) return null;

    final completer = Completer<List<Uint8List>>();
    final ratio = MediaQuery.of(context).devicePixelRatio;

    final globalKeyList = <GlobalKey>[];
    for (int i = 0; i < markerList.length; i++) {
      globalKeyList.add(GlobalKey());
    }

    setState(() {
      _widgetLayer = Stack(
        children: [
          for (int i = 0; i < markerList.length; i++)
            RepaintBoundary(key: globalKeyList[i], child: markerList[i])
        ],
      );
    });

    // 等待一帧结束再获取图片数据
    WidgetsBinding.instance.addPostFrameCallback((duration) async {
      final result = <Uint8List>[];

      await Future.wait([
        for (final key in globalKeyList)
          (key.currentContext.findRenderObject() as RenderRepaintBoundary)
              ?.toImage(pixelRatio: ratio)
              ?.then((image) => image.toByteData(format: ImageByteFormat.png))
              ?.then((byteData) => byteData.buffer.asUint8List())
              ?.then((data) => result.add(data))
      ]);

      completer.complete(result);

      // 清空
      setState(() {
        _widgetLayer = null;
      });
    });

    return completer.future;
  }

  Future<void> _onPlatformViewDispose() async {
    await _controller?.dispose();
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
        onMapMoving: widget.onMapMoving,
        onMapMoveEnd: widget.onMapMoveEnd,
      );
    }
  }

  Future<void> _initIOS() async {
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
        onMapMoving: widget.onMapMoving,
        onMapMoveEnd: widget.onMapMoveEnd,
      );
    }
  }
}
