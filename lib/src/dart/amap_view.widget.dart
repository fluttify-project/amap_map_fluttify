import 'dart:async';
import 'dart:io';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/dart/amap_controller.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef Future<void> _OnMapCreated(AmapController controller);

/// 高德地图 Widget
class AmapView extends StatefulWidget {
  const AmapView({
    Key key,
    this.onMapCreated,
    this.showIndoorMap,
    this.mapType,
    this.language,
    this.showTraffic,
    this.showZoomControl,
    this.showCompass,
    this.showLocateControl,
    this.showScaleControl,
    this.zoomGesturesEnabled,
    this.scrollGesturesEnabled,
    this.rotateGestureEnabled,
    this.tiltGestureEnabled,
    this.allGesturesEnabled,
    this.zoomLevel,
    this.centerCoordinate,
    this.markers,
    this.onMarkerClick,
    this.onMapClick,
    this.onMapDrag,
    this.maskDelay = const Duration(seconds: 0),
    this.mask,
  }) : super(key: key);

  /// 地图创建完成回调
  final _OnMapCreated onMapCreated;

  /// 是否显示室内地图
  final bool showIndoorMap;

  /// 地图类型
  final MapType mapType;

  /// 地图语言
  final Language language;

  /// 是否显示交通情况
  final bool showTraffic;

  /// 是否显示缩放控件
  final bool showZoomControl;

  /// 是否显示指南针控件
  final bool showCompass;

  /// 是否显示定位控件
  final bool showLocateControl;

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

  /// 是否使能所有手势
  final bool allGesturesEnabled;

  /// 缩放级别
  final double zoomLevel;

  /// 中心点坐标
  final LatLng centerCoordinate;

  /// 标记
  final List<MarkerOption> markers;

  /// 标识点击回调
  final OnMarkerClick onMarkerClick;

  /// 地图点击回调
  final OnMapClick onMapClick;

  /// 地图拖动回调
  final OnMapDrag onMapDrag;

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

  @override
  Widget build(BuildContext context) {
    final mask = FutureBuilder<bool>(
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
    if (Platform.isAndroid) {
      return Stack(
        children: <Widget>[
          com_amap_api_maps_MapView_Android(
            onViewCreated: (controller) async {
              _controller = AmapController.android(controller);

              final bundle =
                  await PlatformFactoryAndroid.createandroid_os_Bundle();
              await controller.onCreate(bundle);

              if (widget.onMapCreated != null) {
                await widget.onMapCreated(_controller);
              }
              await _initMap();
              release(bundle);
            },
          ),
          mask,
        ],
      );
    } else if (Platform.isIOS) {
      return Stack(
        children: <Widget>[
          MAMapView_iOS(
            onViewCreated: (controller) async {
              _controller = AmapController.ios(controller);

              if (widget.onMapCreated != null) {
                await widget.onMapCreated(_controller);
              }
              await _initMap();
            },
          ),
          mask,
        ],
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  @override
  void dispose() {
    _controller?.dispose();

    final isCurrentPlugin = (it) => it.tag == 'amap_map_fluttify';
    kNativeObjectPool
      ..where(isCurrentPlugin).forEach(release)
      ..removeWhere(isCurrentPlugin);
    super.dispose();
  }

  Future<void> _initMap() async {
    if (widget.showIndoorMap != null) {
      await _controller?.showIndoorMap(widget.showIndoorMap);
    }
    if (widget.mapType != null) {
      await _controller?.setMapType(widget.mapType);
    }
    if (widget.language != null) {
      await _controller?.setMapLanguage(widget.language);
    }
    if (widget.showTraffic != null) {
      await _controller?.showTraffic(widget.showTraffic);
    }
    if (widget.showZoomControl != null) {
      await _controller?.showZoomControl(widget.showZoomControl);
    }
    if (widget.showCompass != null) {
      await _controller?.showCompass(widget.showCompass);
    }
    if (widget.showLocateControl != null) {
      await _controller?.showLocateControl(widget.showLocateControl);
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
    if (widget.allGesturesEnabled != null) {
      await _controller?.setAllGesturesEnabled(widget.allGesturesEnabled);
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
    if (widget.onMarkerClick != null) {
      await _controller?.setMarkerClickListener(widget.onMarkerClick);
    }
    if (widget.onMapClick != null) {
      await _controller?.setMapClickListener(widget.onMapClick);
    }
    if (widget.onMapDrag != null) {
      await _controller?.setMapDragListener(widget.onMapDrag);
    }
  }
}
