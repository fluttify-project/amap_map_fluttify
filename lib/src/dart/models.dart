import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../android/android.export.g.dart';
import '../ios/ios.export.g.dart';
import 'enums.dart';

/// Marker创建参数
@immutable
class MarkerOption {
  /// 经纬度
  final LatLng latLng;

  /// 标题
  final String title;

  /// 副标题
  final String snippet;

  /// 图片uri 可以是url, asset路径或者文件路径
  ///
  /// 如果设置了[iconUri], 那么必须同时设置[imageConfig], 否则图片大小会不一致, 这是flutter
  /// 的bug
  final Uri iconUri;

  /// 图片参数
  ///
  /// 目前利用到的信息只有[devicePixelRatio], 使用[devicePixelRatio]获取当前设备
  /// 对应分辨率的图片(Android), iOS使用1.0x的图片. 所以[size]设置了是没用的, 这是flutter
  /// 的PlatformView的bug, 参考https://github.com/flutter/flutter/issues/24865.
  /// 这个bug彻底解决之后才能保证marker是完美的.
  final ImageConfiguration imageConfig;

  /// Widget形式的Marker
  ///
  /// 不能和[iconUri]一起用.
  /// 注意控制Widget的大小, 比如Column默认是max, 会使用地图的高度, 那么此时需要设置成min.
  final Widget widget;

  /// 是否可拖动
  final bool draggable;

  /// 是否允许弹窗
  final bool infoWindowEnabled;

  /// 旋转角度 单位为度(°)
  final double rotateAngle;

  /// 横轴锚点
  final double anchorU;

  /// 纵轴锚点
  final double anchorV;

  MarkerOption({
    @required this.latLng,
    this.title,
    this.snippet,
    this.iconUri,
    this.widget,
    this.imageConfig,
    this.draggable,
    this.infoWindowEnabled = true,
    this.rotateAngle,
    this.anchorU,
    this.anchorV,
  })  : assert(
          (iconUri != null && imageConfig != null) || iconUri == null,
          'iconUri和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        ),
        assert(!(widget != null && iconUri != null), 'widget和iconUri不能同时设置! ');

  @override
  String toString() {
    return 'MarkerOption{latLng: $latLng, title: $title, snippet: $snippet, iconUri: $iconUri, imageConfig: $imageConfig, widget: $widget, draggable: $draggable, infoWindowEnabled: $infoWindowEnabled, rotateAngle: $rotateAngle, anchorU: $anchorU, anchorV: $anchorV}';
  }
}

/// Polyline创建参数
@immutable
class PolylineOption {
  /// 经纬度列表
  final List<LatLng> latLngList;

  /// 宽度
  final double width;

  /// 颜色
  final Color strokeColor;

  /// 自定义纹理
  final Uri customTexture;

  /// 图片参数
  final ImageConfiguration imageConfig;

  /// 线段末端样式
  final LineCapType lineCapType;

  /// 线段连接处样式
  final LineJoinType lineJoinType;

  PolylineOption({
    @required this.latLngList,
    this.width,
    this.strokeColor,
    this.customTexture,
    this.imageConfig,
    this.lineCapType,
    this.lineJoinType,
  }) : assert(
          (customTexture != null && imageConfig != null) ||
              customTexture == null,
          'customTexture和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        );

  @override
  String toString() {
    return 'PolylineOption{latLngList: $latLngList, width: $width, strokeColor: $strokeColor, customTexture: $customTexture, imageConfig: $imageConfig, lineCapType: $lineCapType, lineJoinType: $lineJoinType}';
  }
}

/// Polygon创建参数
@immutable
class PolygonOption {
  /// 经纬度列表
  final List<LatLng> latLngList;

  /// 宽度
  final double width;

  /// 边框颜色
  final Color strokeColor;

  /// 填充颜色
  final Color fillColor;

  PolygonOption({
    @required this.latLngList,
    this.width,
    this.strokeColor,
    this.fillColor = Colors.transparent,
  });

  @override
  String toString() {
    return 'PolygonOption{latLngList: $latLngList, width: $width, strokeColor: $strokeColor, fillColor: $fillColor}';
  }
}

/// Circle创建参数
@immutable
class CircleOption {
  /// 中心点经纬度
  final LatLng center;

  /// 宽度
  final double radius;

  /// 宽度
  final double width;

  /// 边框颜色
  final Color strokeColor;

  /// 填充颜色
  final Color fillColor;

  CircleOption({
    @required this.center,
    @required this.radius,
    this.width,
    this.strokeColor,
    this.fillColor,
  })  : assert(center != null),
        assert(radius != null);

  @override
  String toString() {
    return 'CircleOption{center: $center, radius: $radius, width: $width, strokeColor: $strokeColor, fillColor: $fillColor}';
  }
}

/// 地图移动
@immutable
class MapMove {
  final LatLng latLng;
  final double zoom;
  final double tilt;
  final bool isAbroad;

  MapMove({this.latLng, this.zoom, this.tilt, this.isAbroad});

  @override
  String toString() {
    return 'MapDrag{latLng: $latLng, zoom: $zoom, tilt: $tilt, isAbroad: $isAbroad}';
  }
}

/// 屏幕坐标
@immutable
class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }
}

/// 地图标记
class Marker {
  Marker.android(this._androidModel);

  Marker.ios(this._iosModel, this._iosController);

  com_amap_api_maps_model_Marker _androidModel;
  MAPointAnnotation _iosModel;
  MAMapView _iosController;

  Future<String> get title {
    return platform(
      android: (_) => _androidModel.getTitle(),
      ios: (_) => _iosModel.get_title(),
    );
  }

  Future<String> get snippet {
    return platform(
      android: (_) => _androidModel.getSnippet(),
      ios: (_) => _iosModel.get_subtitle(),
    );
  }

  Future<LatLng> get location {
    return platform(
      android: (_) async {
        final _location = await _androidModel.getPosition();
        return LatLng(
          await _location.get_latitude(),
          await _location.get_longitude(),
        );
      },
      ios: (_) async {
        final location = await _iosModel.get_coordinate();
        return LatLng(await location.latitude, await location.longitude);
      },
    );
  }

  Future<void> remove() async {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController.removeAnnotation(_iosModel),
    );
  }

  Future<void> showInfoWindow() async {
    return platform(
      android: (_) => _androidModel.showInfoWindow(),
      ios: (_) => _iosController?.selectAnnotationAnimated(_iosModel, true),
    );
  }

  Future<void> hideInfoWindow() async {
    return platform(
      android: (_) => _androidModel.hideInfoWindow(),
      ios: (_) => _iosController?.deselectAnnotationAnimated(_iosModel, true),
    );
  }
}

/// 折线
class Polyline {
  Polyline.android(this._androidModel);

  Polyline.ios(this._iosModel, this._iosController);

  com_amap_api_maps_model_Polyline _androidModel;
  MAPolyline _iosModel;
  MAMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}

/// 多边形
class Polygon {
  Polygon.android(this._androidModel);

  Polygon.ios(this._iosModel, this._iosController);

  com_amap_api_maps_model_Polygon _androidModel;
  MAPolygon _iosModel;
  MAMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}

/// 圆形
class Circle {
  Circle.android(this._androidModel);

  Circle.ios(this._iosModel, this._iosController);

  com_amap_api_maps_model_Circle _androidModel;
  MACircle _iosModel;
  MAMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}
