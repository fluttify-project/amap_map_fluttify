import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'models.dart';

typedef void _OnMarkerClick(Marker marker);
typedef void _OnMapClick(LatLng latLng);
typedef void _OnMarkerDrag(Marker marker);

/// 地图控制类
class AmapController {
  /// Android构造器
  AmapController.android(this._androidController);

  /// iOS构造器
  AmapController.ios(this._iosController);

  com_amap_api_maps_MapView _androidController;
  MAMapView _iosController;

  final _iosMapDelegate = _IOSMapDelegate();
  final _androidMapDelegate = _AndroidMapDelegate();

  /// 是否显示我的位置
  Future<void> showMyLocation(bool show) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final locationStyle = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_MyLocationStyle__();
        await locationStyle?.showMyLocation(show);
        await map.setMyLocationStyle(locationStyle);
        await map.setMyLocationEnabled(show);

        pool..add(map)..add(locationStyle);
      },
      ios: (pool) async {
        await _iosController.set_showsUserLocation(show);

        if (show) {
          await _iosController.setUserTrackingModeAnimated(
              MAUserTrackingMode.MAUserTrackingModeFollow, true);
        }
      },
    );
  }

  /// 是否显示室内地图
  Future showIndoorMap(bool show) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        await map.showIndoorMap(show);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_showsIndoorMap(show);
      },
    );
  }

  /// 选择显示图层
  Future setMapType(MapType mapType) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        switch (mapType) {
          case MapType.Standard:
            await map.setMapType(1);
            break;
          case MapType.Satellite:
            await map.setMapType(2);
            break;
          case MapType.Night:
            await map.setMapType(3);
            break;
          case MapType.Navi:
            await map.setMapType(4);
            break;
          case MapType.Bus:
            await map.setMapType(5);
            break;
        }

        pool..add(map);
      },
      ios: (pool) async {
        switch (mapType) {
          case MapType.Standard:
            await _iosController.set_mapType(MAMapType.MAMapTypeStandard);
            break;
          case MapType.Satellite:
            await _iosController.set_mapType(MAMapType.MAMapTypeSatellite);
            break;
          case MapType.Night:
            await _iosController.set_mapType(MAMapType.MAMapTypeStandardNight);
            break;
          case MapType.Navi:
            await _iosController.set_mapType(MAMapType.MAMapTypeNavi);
            break;
          case MapType.Bus:
            await _iosController.set_mapType(MAMapType.MAMapTypeBus);
            break;
        }
      },
    );
  }

  /// 选择地图语言
  Future setMapLanguage(Language language) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        switch (language) {
          case Language.Chinese:
            await map.setMapLanguage('zh_cn');
            break;
          case Language.English:
            await map.setMapLanguage('en');
            break;
        }

        pool..add(map);
      },
      ios: (pool) async {
        switch (language) {
          case Language.Chinese:
            await performSelectorWithObject(
                _iosController, 'setMapLanguage:', 0);
            break;
          case Language.English:
            await performSelectorWithObject(
                _iosController, 'setMapLanguage:', 1);
            break;
        }
      },
    );
  }

  /// 显示路况信息
  Future showTraffic(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        await map.setTrafficEnabled(enable);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_showTraffic(enable);
      },
    );
  }

  /// 显示缩放控件
  Future showZoomControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomControlsEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        print('ios端不支持显示缩放控件');
      },
    );
  }

  /// 显示指南针
  Future showCompass(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setCompassEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_showsCompass(enable);
      },
    );
  }

  /// 显示定位按钮
  Future showLocateControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setMyLocationButtonEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        print('ios端不支持显示定位按钮');
      },
    );
  }

  /// 显示比例尺控件
  Future showScaleControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScaleControlsEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_showsScale(enable);
      },
    );
  }

  /// 缩放手势使能
  Future setZoomGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_zoomEnabled(enable);
      },
    );
  }

  /// 滑动手势使能
  Future setScrollGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScrollGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_scrollEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future setRotateGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setRotateGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_rotateEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future setTiltGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setTiltGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 所有手势使能
  Future setAllGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setAllGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_zoomEnabled(enable);
        await _iosController.set_scrollEnabled(enable);
        await _iosController.set_rotateEnabled(enable);
        await _iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 设置缩放大小
  Future setZoomLevel(double level, {bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomTo(level);
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        await _iosController.setZoomLevelAnimated(level, animated);
      },
    );
  }

  /// 放大一个等级
  Future zoomIn({bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomIn();
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await _iosController.get_zoomLevel();
        await _iosController.setZoomLevelAnimated(currentLevel + 1, animated);
      },
    );
  }

  /// 放大一个等级
  Future zoomOut({bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomOut();
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await _iosController.get_zoomLevel();
        await _iosController.setZoomLevelAnimated(currentLevel - 1, animated);
      },
    );
  }

  /// 设置地图中心点
  Future setCenterCoordinate(
    double lat,
    double lng, {
    double zoomLevel = 15,
    bool animated = true,
  }) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        final latLng = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(lat, lng);
        final cameraPosition = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_CameraPosition__com_amap_api_maps_model_LatLng__float__float__float(
                latLng, zoomLevel, 0, 0);
        final cameraUpdate = await com_amap_api_maps_CameraUpdateFactory
            .newCameraPosition(cameraPosition);
        await map.moveCamera(cameraUpdate);

        pool..add(map)..add(latLng)..add(cameraUpdate);
      },
      ios: (pool) async {
        final latLng =
            await PlatformFactory_iOS.createCLLocationCoordinate2D(lat, lng);
        await _iosController.setCenterCoordinateAnimated(latLng, animated);

        pool..add(latLng);
      },
    );
  }

  /// 获取地图中心点
  Future<LatLng> getCenterCoordinate() {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        final position = await map.getCameraPosition();
        final target = await position.get_target();

        // target不能马上释放, 因为跟返回对象有联系
        pool..add(map)..add(position);

        return LatLng(
          await target.get_latitude(),
          await target.get_longitude(),
        );
      },
      ios: (pool) async {
        final target = await _iosController.get_centerCoordinate();
        // target不能马上释放, 因为跟返回对象有联系
        return LatLng(await target.latitude, await target.longitude);
      },
    );
  }

  /// 添加marker
  ///
  /// 在纬度[lat], 经度[lng]的位置添加marker, 并设置标题[title]和副标题[snippet], [iconUri]
  /// 可以是图片url, asset路径或者文件路径
  Future<Marker> addMarker(
    BuildContext context,
    LatLng point, {
    String title,
    String snippet,
    Uri iconUri,
    bool draggable,
  }) {
    Future<Uint8List> _getImageData(Uri iconUri) async {
      Uint8List iconData;
      switch (iconUri.scheme) {
        // 网络图片
        case 'https':
        case 'http':
          HttpClient httpClient = HttpClient();
          var request = await httpClient.getUrl(iconUri);
          var response = await request.close();
          iconData = await consolidateHttpClientResponseBytes(response);
          break;
        // 文件图片
        case 'file':
          final imageFile = File.fromUri(iconUri);
          iconData = imageFile.readAsBytesSync();
          break;
        // asset图片
        default:
          // asset的bug描述(https://github.com/flutter/flutter/issues/24865):
          // android和ios平台上都取了1.0密度的图片, android上就显示了1.0密度的图片, 而ios
          // 平台上使用的图片也是1.0密度, 但是根据设备密度进行了对应的放大, 导致了android和ios
          // 两端的图片的大小不一致, 这里只对android根据密度选择原始图片, ios原封不动
          // 这样做android端能够保证完美, ios端的话图片会有点糊, 因为原始图片是1.0密度, 但是这样
          // 的话两端大小是一致的, 如果要求再高一点的话, ios这边对图片根据设备密度选择好图片后, 再进行对应密度
          // 的缩小, 就是完美的了, 但是处理起来比较麻烦, 这里就不去处理了
          if (Platform.isAndroid) {
            final byteData = await rootBundle
                .load(AmapService.toResolutionAware(context, iconUri.path));
            iconData = byteData.buffer.asUint8List();
          } else {
            final byteData = await rootBundle.load(iconUri.path);
            iconData = byteData.buffer.asUint8List();
          }
          break;
      }
      return iconData;
    }

    final lat = point.latitude;
    final lng = point.longitude;
    return platform(
      android: (pool) async {
        // 获取地图
        final map = await _androidController.getMap();

        // marker经纬度
        final latLng = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(lat, lng);

        // marker配置
        final markerOption = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_MarkerOptions__();

        // 设置marker经纬度
        await markerOption.position(latLng);
        // 设置marker标题
        if (title != null) {
          await markerOption.title(title);
        }
        // 设置marker副标题
        if (snippet != null) {
          await markerOption.snippet(snippet);
        }
        // 设置marker图标
        if (iconUri != null) {
          Uint8List iconData = await _getImageData(iconUri);

          final bitmap =
              await PlatformFactory_Android.createandroid_graphics_Bitmap(
                  iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool..add(bitmap)..add(icon);
        }
        // 是否可拖拽
        if (draggable != null) await markerOption.draggable(draggable);

        final marker = await map.addMarker(markerOption);

        // marker不释放, 还有用
        pool..add(map)..add(latLng)..add(markerOption);

        return Marker.android(marker);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._iosController = _iosController,
        );

        // 创建marker
        final pointAnnotation =
            await AmapMapFluttifyFactoryIOS.createMAPointAnnotation();

        final coordinate =
            await PlatformFactory_iOS.createCLLocationCoordinate2D(lat, lng);

        // 设置经纬度
        await pointAnnotation.set_coordinate(coordinate);

        // 设置标题
        if (title != null) {
          await pointAnnotation.set_title(title);
        }
        // 设置副标题
        if (snippet != null) {
          await pointAnnotation.set_subtitle(snippet);
        }
        // 设置图片
        // 设置marker图标
        if (iconUri != null) {
          Uint8List iconData = await _getImageData(iconUri);

          final icon = await PlatformFactory_iOS.createUIImage(iconData);

          // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
          // 供ios的回调去获取
          await PlatformFactory_iOS.pushStack('icon', icon);

          pool..add(icon);
        }
        // 是否可拖拽
        if (draggable != null)
          await PlatformFactory_iOS.pushStackJsonable('draggable', draggable);

        await _iosController.addAnnotation(pointAnnotation);

        // pointAnnotation不释放, 还有用
        pool..add(coordinate);

        return Marker.ios(pointAnnotation, _iosController);
      },
    );
  }

  Future<void> clearMarkers() async {
    return platform(android: (pool) async {
      final map = await _androidController.getMap();
      final markers = await map.getMapScreenMarkers();

      for (final marker in markers) {
        marker.remove();
      }

      pool
        ..add(map)
        ..addAll(markers);
    }, ios: (pool) async {
      final markers = await _iosController.get_annotations();
      await _iosController.removeAnnotations(markers);

      pool..addAll(markers as List<Ref>);
    });
  }

  /// 添加线
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<void> addPolyline(
    List<LatLng> points, {
    double width,
    Color strokeColor = Colors.black,
  }) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final point in points) {
          final latLng = await AmapMapFluttifyFactoryAndroid
              .createcom_amap_api_maps_model_LatLng__double__double(
                  point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polylineOptions = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_PolylineOptions__();

        // 添加参数
        await polylineOptions.addAll(latLngList);
        if (width != null) {
          await polylineOptions.width(width);
        }
        if (strokeColor != null) {
          await polylineOptions
              .color(Int32List.fromList([strokeColor.value])[0]);
        }

        // 设置参数
        await map.addPolyline(polylineOptions);

        pool
          ..add(map)
          ..add(polylineOptions)
          ..addAll(latLngList);
      },
      ios: (pool) async {
        await _iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList = [];
        for (final point in points) {
          final latLng = await PlatformFactory_iOS.createCLLocationCoordinate2D(
              point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polyline = await MAPolyline.polylineWithCoordinatesCount(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (width != null)
          await PlatformFactory_iOS.pushStackJsonable('width', width);
        if (strokeColor != null)
          await PlatformFactory_iOS.pushStackJsonable(
              'strokeColor', strokeColor.value);

        // 设置参数
        await _iosController.addOverlay(polyline);

        pool
          ..add(polyline)
          ..addAll(latLngList);
      },
    );
  }

  /// 添加多边形
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<void> addPolygon(
    List<LatLng> points, {
    double width = 5,
    Color fillColor = Colors.white,
    Color strokeColor = Colors.black,
  }) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final point in points) {
          final latLng = await AmapMapFluttifyFactoryAndroid
              .createcom_amap_api_maps_model_LatLng__double__double(
                  point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造参数
        final polygonOptions = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_PolygonOptions__();

        // 添加参数
        await polygonOptions.addAll(latLngList);
        if (width != null) {
          await polygonOptions.strokeWidth(width);
        }
        if (strokeColor != null) {
          await polygonOptions
              .strokeColor(Int32List.fromList([strokeColor.value])[0]);
        }
        if (fillColor != null) {
          await polygonOptions
              .fillColor(Int32List.fromList([fillColor.value])[0]);
        }

        // 设置参数
        await map.addPolygon(polygonOptions);

        pool
          ..add(map)
          ..add(polygonOptions)
          ..addAll(latLngList);
      },
      ios: (pool) async {
        await _iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList = [];
        for (final point in points) {
          final latLng = await PlatformFactory_iOS.createCLLocationCoordinate2D(
              point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polygon = await MAPolygon.polygonWithCoordinatesCount(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (width != null)
          await PlatformFactory_iOS.pushStackJsonable('width', width);
        if (strokeColor != null)
          await PlatformFactory_iOS.pushStackJsonable(
              'strokeColor', strokeColor.value);
        if (fillColor != null)
          await PlatformFactory_iOS.pushStackJsonable(
              'fillColor', fillColor.value);

        // 设置参数
        await _iosController.addOverlay(polygon);

        pool
          ..add(polygon)
          ..addAll(latLngList);
      },
    );
  }

  /// 添加圆
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<void> addCircle(
    LatLng point,
    double radius, {
    double width = 5,
    Color fillColor = Colors.white,
    Color strokeColor = Colors.black,
  }) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造点
        final latLng = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(
                point.latitude, point.longitude);

        // 构造参数
        final circleOptions = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_CircleOptions__();

        // 添加参数
        await circleOptions.center(latLng);
        await circleOptions.radius(radius);
        if (width != null) {
          await circleOptions.strokeWidth(width);
        }
        if (strokeColor != null) {
          await circleOptions
              .strokeColor(Int32List.fromList([strokeColor.value])[0]);
        }
        if (fillColor != null)
          await circleOptions
              .fillColor(Int32List.fromList([fillColor.value])[0]);

        // 设置参数
        await map.addCircle(circleOptions);

        pool..add(map)..add(circleOptions)..add(latLng);
      },
      ios: (pool) async {
        await _iosController.set_delegate(_iosMapDelegate);

        final latLng = await PlatformFactory_iOS.createCLLocationCoordinate2D(
            point.latitude, point.longitude);

        // 参数
        final circle =
            await MACircle.circleWithCenterCoordinateRadius(latLng, radius);

        // 宽度和颜色需要设置到STACK里去
        if (width != null)
          await PlatformFactory_iOS.pushStackJsonable('width', width);
        if (strokeColor != null)
          await PlatformFactory_iOS.pushStackJsonable(
              'strokeColor', strokeColor.value);
        if (fillColor != null)
          await PlatformFactory_iOS.pushStackJsonable(
              'fillColor', fillColor.value);

        // 设置参数
        await _iosController.addOverlay(circle);

        pool..add(circle);
      },
    );
  }

  /// 设置marker点击监听事件
  Future<void> setMarkerClickListener(_OnMarkerClick onMarkerClicked) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMarkerClickListener(
            _androidMapDelegate.._onMarkerClicked = onMarkerClicked);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController
            .set_delegate(_iosMapDelegate..onMarkerClicked = onMarkerClicked);
      },
    );
  }

  /// 设置marker拖动监听事件
  Future<void> setMarkerDragListener({
    _OnMarkerDrag onMarkerDragStart,
    _OnMarkerDrag onMarkerDragging,
    _OnMarkerDrag onMarkerDragEnd,
  }) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMarkerDragListener(
          _androidMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );
      },
    );
  }

  /// 设置地图点击监听事件
  Future<void> setMapClickListener(_OnMapClick onMapClick) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMapClickListener(
          _androidMapDelegate.._onMapClick = onMapClick,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._onMapClick = onMapClick,
        );
      },
    );
  }
}

class _IOSMapDelegate extends NSObject with MAMapViewDelegate {
  _OnMarkerClick onMarkerClicked;
  _OnMarkerDrag _onMarkerDragStart;
  _OnMarkerDrag _onMarkerDragging;
  _OnMarkerDrag _onMarkerDragEnd;
  _OnMapClick _onMapClick;
  MAMapView _iosController;

  @override
  Future<void> mapViewDidAnnotationViewTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    super.mapViewDidAnnotationViewTapped(mapView, view);
    if (onMarkerClicked != null) {
      onMarkerClicked(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapViewAnnotationViewdidChangeDragStatefromOldState(
    MAMapView mapView,
    MAAnnotationView view,
    MAAnnotationViewDragState newState,
    MAAnnotationViewDragState oldState,
  ) async {
    super.mapViewAnnotationViewdidChangeDragStatefromOldState(
      mapView,
      view,
      newState,
      oldState,
    );
    if (_onMarkerDragStart != null &&
        newState ==
            MAAnnotationViewDragState.MAAnnotationViewDragStateStarting) {
      _onMarkerDragStart(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }

    if (_onMarkerDragging != null &&
        newState ==
            MAAnnotationViewDragState.MAAnnotationViewDragStateDragging) {
      _onMarkerDragging(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }

    if (_onMarkerDragEnd != null &&
        newState == MAAnnotationViewDragState.MAAnnotationViewDragStateEnding) {
      _onMarkerDragEnd(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapViewDidSingleTappedAtCoordinate(
      MAMapView mapView, CLLocationCoordinate2D coordinate) async {
    super.mapViewDidSingleTappedAtCoordinate(mapView, coordinate);

    if (_onMapClick != null) {
      _onMapClick(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        com_amap_api_maps_AMap_OnMarkerClickListener,
        com_amap_api_maps_AMap_OnMarkerDragListener,
        com_amap_api_maps_AMap_OnMapClickListener {
  _OnMarkerClick _onMarkerClicked;
  _OnMarkerDrag _onMarkerDragStart;
  _OnMarkerDrag _onMarkerDragging;
  _OnMarkerDrag _onMarkerDragEnd;
  _OnMapClick _onMapClick;

  @override
  Future<bool> onMarkerClick(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerClick(var1);
    if (_onMarkerClicked != null) {
      _onMarkerClicked(Marker.android(var1));
    }
    return true;
  }

  @mustCallSuper
  Future<void> onMarkerDragStart(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDragStart(var1);
    if (_onMarkerDragStart != null) {
      _onMarkerDragStart(Marker.android(var1));
    }
  }

  @mustCallSuper
  Future<void> onMarkerDrag(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDrag(var1);
    if (_onMarkerDragging != null) {
      _onMarkerDragging(Marker.android(var1));
    }
  }

  @mustCallSuper
  Future<void> onMarkerDragEnd(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDragEnd(var1);
    if (_onMarkerDragEnd != null) {
      _onMarkerDragEnd(Marker.android(var1));
    }
  }

  @override
  Future<void> onMapClick(com_amap_api_maps_model_LatLng var1) async {
    super.onMapClick(var1);
    if (_onMapClick != null) {
      _onMapClick(LatLng(
        await var1.get_latitude(),
        await var1.get_longitude(),
      ));
    }
  }
}
