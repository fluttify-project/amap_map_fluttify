import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../android/android.export.g.dart';
import '../ios/ios.export.g.dart';
import 'enums.dart';

/// 我的位置选项
@immutable
class MyLocationOption {
  /// 是否显示
  final bool show;

  /// 定位类型
  final MyLocationType myLocationType;

  /// 定位间隔
  final Duration interval;

  /// 我的位置图标
  final Uri iconUri;

  /// 图标配置
  final ImageConfiguration imageConfiguration;

  /// 边框颜色
  final Color strokeColor;

  /// 边框宽度
  final double strokeWidth;

  /// 填充颜色
  final Color fillColor;

  MyLocationOption({
    this.show = true,
    this.myLocationType = MyLocationType.Locate,
    this.interval = Duration.zero,
    this.iconUri,
    this.imageConfiguration,
    this.strokeColor,
    this.strokeWidth,
    this.fillColor,
  }) : assert(
          (iconUri != null && imageConfiguration != null) || iconUri == null,
          'iconUri与imageConfiguration同时设置!',
        );

  @override
  String toString() {
    return 'MyLocationOption{show: $show, myLocationType: $myLocationType, interval: $interval, iconUri: $iconUri, imageConfiguration: $imageConfiguration, strokeColor: $strokeColor, fillColor: $fillColor, strokeWidth: $strokeWidth}';
  }
}

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

  /// 是否可见
  final bool visible;

  /// 旋转角度 单位为度(°)
  final double rotateAngle;

  /// 横轴锚点
  final double anchorU;

  /// 纵轴锚点
  final double anchorV;

  /// 自定义数据 理论上可以使用任何类型的数据, 但是为了减少意外情况, 这里一律转换成String来保存
  final String object;

  /// 图片宽度 iOS only
  final double width;

  /// 图片高度 iOS only
  final double height;

  MarkerOption({
    @required this.latLng,
    this.title,
    this.snippet,
    this.iconUri,
    this.widget,
    this.imageConfig,
    this.draggable,
    this.infoWindowEnabled = true,
    this.visible = true,
    this.rotateAngle,
    this.anchorU = 0.5,
    this.anchorV = 0,
    this.object,
    this.width,
    this.height,
  })  : assert(
          (iconUri != null && imageConfig != null) || iconUri == null,
          'iconUri和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        ),
        assert(!(widget != null && iconUri != null), 'widget和iconUri不能同时设置! ');

  @override
  String toString() {
    return 'MarkerOption{latLng: $latLng, title: $title, snippet: $snippet, iconUri: $iconUri, imageConfig: $imageConfig, widget: $widget, draggable: $draggable, infoWindowEnabled: $infoWindowEnabled, visible: $visible, rotateAngle: $rotateAngle, anchorU: $anchorU, anchorV: $anchorV, object: $object, width: $width, height: $height}';
  }
}

/// 平滑移动Marker创建参数
@immutable
class SmoothMoveMarkerOption {
  /// 轨迹经纬度列表
  final List<LatLng> path;

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

  /// 动画时长
  final Duration duration;

  SmoothMoveMarkerOption({
    @required this.path,
    @required this.iconUri,
    @required this.imageConfig,
    @required this.duration,
  }) : assert(
          (iconUri != null && imageConfig != null) || iconUri == null,
          'iconUri和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        );

  @override
  String toString() {
    return 'SmoothMoveMarkerOption{path: $path, iconUri: $iconUri, imageConfig: $imageConfig, duration: $duration}';
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

  /// 是否虚线
  final DashType dashType;

  PolylineOption({
    @required this.latLngList,
    this.width,
    this.strokeColor,
    this.customTexture,
    this.imageConfig,
    this.lineCapType,
    this.lineJoinType,
    this.dashType,
  }) : assert(
          (customTexture != null && imageConfig != null) ||
              customTexture == null,
          'customTexture和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        );

  @override
  String toString() {
    return 'PolylineOption{latLngList: $latLngList, width: $width, strokeColor: $strokeColor, customTexture: $customTexture, imageConfig: $imageConfig, lineCapType: $lineCapType, lineJoinType: $lineJoinType, dotted: $dashType}';
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

/// TileOverlay创建参数
@immutable
class HeatmapTileOption {
  /// 中心点经纬度
  final List<LatLng> latLngList;

  HeatmapTileOption({
    @required this.latLngList,
  });

  @override
  String toString() {
    return 'HeatmapTileOption{latLngList: $latLngList}';
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

/// 屏幕坐标
@immutable
class TraceLocation {
  final double latitude;
  final double longitude;
  final double speed;
  final double bearing;
  final int time;

  TraceLocation({
    @required this.latitude,
    @required this.longitude,
    @required this.speed,
    @required this.bearing,
    @required this.time,
  });

  @override
  String toString() {
    return 'TraceLocation{latitude: $latitude, longitude: $longitude, speed: $speed, bearing: $bearing, time: $time}';
  }
}

/// 地图定位信息 区分于定位插件的定位信息
class MapLocation {
  MapLocation.android(this._androidModel);

  MapLocation.ios(this._iosModel);

  android_location_Location _androidModel;
  MAUserLocation _iosModel;

  Future<LatLng> get coord {
    return platform(
      android: (pool) async {
        return LatLng(
          await _androidModel.latitude,
          await _androidModel.longitude,
        );
      },
      ios: (pool) async {
        final location = await _iosModel.get_coordinate();
        return LatLng(await location.latitude, await location.longitude);
      },
    );
  }

  Future<double> get bearing {
    return platform(
      android: (pool) => _androidModel.bearing,
      ios: (pool) async {
        final heading = await _iosModel.get_heading();
        return heading.magneticHeading;
      },
    );
  }

  Future<double> get altitude {
    return platform(
      android: (pool) => _androidModel.altitude,
      ios: (pool) async {
        final location = await _iosModel.get_location();
        return location.altitude;
      },
    );
  }

  Future<double> get speed {
    return platform(
      android: (pool) => _androidModel.speed,
      ios: (pool) async {
        final location = await _iosModel.get_location();
        return location.speed;
      },
    );
  }
}

/// 地图标记
class Marker {
  Marker.android(this._androidModel);

  Marker.ios(this._iosModel, this._annotationView, this._iosController);

  com_amap_api_maps_model_Marker _androidModel;

  MAPointAnnotation _iosModel;
  MAAnnotationView _annotationView;
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

  Future<String> get object {
    return platform(
      android: (_) {
        return _androidModel.getObject().then((object) => object as String);
      },
      ios: (_) {
        return _iosModel
            .getJsonableProperty(7)
            .then((object) => object as String);
      },
    );
  }

  Future<void> remove() async {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController.removeAnnotation(_iosModel),
    );
  }

  Future<void> setCoordinate(LatLng coord) async {
    assert(coord != null);
    return platform(
      android: (_) async => _androidModel.setPosition(
        await com_amap_api_maps_model_LatLng.create__double__double(
          coord.latitude,
          coord.longitude,
        ),
      ),
      ios: (_) async {
        final coordinate = await CLLocationCoordinate2D.create(
          coord.latitude,
          coord.longitude,
        );
        await _iosModel.set_coordinate(coordinate);
        return _annotationView.set_annotation(_iosModel, viewChannel: false);
      },
    );
  }

  Future<void> setVisible(bool visible) async {
    assert(visible != null);
    return platform(
      android: (_) => _androidModel.setVisible(visible),
      ios: (_) => _annotationView.setHidden(!visible),
    );
  }

  Future<void> showInfoWindow() async {
    return platform(
      android: (_) => _androidModel.showInfoWindow(),
      ios: (_) => _iosController?.selectAnnotation_animated(_iosModel, true),
    );
  }

  Future<void> hideInfoWindow() async {
    return platform(
      android: (_) => _androidModel.hideInfoWindow(),
      ios: (_) => _iosController?.deselectAnnotation_animated(_iosModel, true),
    );
  }
}

class SmoothMoveMarker {
  SmoothMoveMarker.android(this._androidModel);

  SmoothMoveMarker.ios(this._iosModel);

  com_amap_api_maps_utils_overlay_SmoothMoveMarker _androidModel;
  MAAnnotationMoveAnimation _iosModel;

  Future<void> stop() async {
    return platform(
      android: (pool) => _androidModel.stopMove(),
      ios: (pool) => _iosModel.cancel(),
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

  Future<bool> contains(LatLng target) {
    return platform(
      android: (_) async {
        final latLng = await com_amap_api_maps_model_LatLng
            .create__double__double(target.latitude, target.longitude);
        return _androidModel.contains(latLng);
      },
      ios: (_) async {
        final latLng = await CLLocationCoordinate2D.create(
            target.latitude, target.longitude);
        final point = await MAMapPointForCoordinate(latLng);
        final bounds = await _iosModel.get_points();
        return MAPolygonContainsPoint(point, bounds, bounds.length);
      },
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

/// 热力图
class Heatmap {
  Heatmap.android(this._androidModel);

  Heatmap.ios(this._iosModel, this._iosController);

  com_amap_api_maps_model_TileOverlay _androidModel;
  MAHeatMapTileOverlay _iosModel;
  MAMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}
