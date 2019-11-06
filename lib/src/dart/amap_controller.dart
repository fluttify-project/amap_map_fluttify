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

typedef void OnMarkerClick(Marker marker);
typedef void OnMapClick(LatLng latLng);
typedef void OnMapDrag(MapDrag latLng);
typedef void OnMarkerDrag(Marker marker);

/// 地图控制类
class AmapController with WidgetsBindingObserver, _Private {
  /// Android构造器
  AmapController.android(this._androidController) {
    WidgetsBinding.instance.addObserver(this);
  }

  /// iOS构造器
  AmapController.ios(this._iosController) {
    WidgetsBinding.instance.addObserver(this);
  }

  com_amap_api_maps_MapView _androidController;
  MAMapView _iosController;

  final _iosMapDelegate = _IOSMapDelegate();
  final _androidMapDelegate = _AndroidMapDelegate();

  /// 获取当前位置
  ///
  /// 返回的是经纬度, 如果需要进一步的数据, 可以配合[https://github.com/fluttify-project/amap_search_fluttify]进行逆地理搜索
  Future<LatLng> getLocation() async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final location = await map.getMyLocation();

        final result = LatLng(
          await location.latitude,
          await location.longitude,
        );
        pool..add(map)..add(location);
        return result;
      },
      ios: (pool) async {
        final location = await _iosController.get_userLocation();
        final coord = await location.get_coordinate();
        return LatLng(await coord.latitude, await coord.longitude);
      },
    );
  }

  /// 是否显示我的位置
  ///
  /// [strokeColor]精度圈边框颜色, [strokeWidth]精度圈边框宽度, [fillColor]精度圈填充颜色
  Future<void> showMyLocation(
    bool show, {
    Color strokeColor,
    Color fillColor,
    double strokeWidth,
  }) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final locationStyle = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_MyLocationStyle__();
        await locationStyle.showMyLocation(show);
        await map.setMyLocationEnabled(show);
        if (show) {
          // 默认只定位一次
          await locationStyle.myLocationType(1);

          // 边框颜色
          if (strokeColor != null) {
            await locationStyle
                .strokeColor(Int32List.fromList([strokeColor.value])[0]);
          }
          // 填充颜色
          if (fillColor != null) {
            await locationStyle
                .radiusFillColor(Int32List.fromList([fillColor.value])[0]);
          }
          // 边框宽度
          if (strokeWidth != null) {
            await locationStyle.strokeWidth(strokeWidth);
          }

          // 设置样式
          await map.setMyLocationStyle(locationStyle);
        }

        pool..add(map)..add(locationStyle);
      },
      ios: (pool) async {
        await _iosController.set_showsUserLocation(show);

        if (show) {
          await _iosController.setUserTrackingModeAnimated(
            MAUserTrackingMode.MAUserTrackingModeFollow,
            true,
          );

          final style = await AmapMapFluttifyFactoryIOS
              .createMAUserLocationRepresentation();

          // 边框颜色
          if (strokeColor != null) {
            final color = await PlatformFactoryIOS.createUIColor(strokeColor);
            await style.set_strokeColor(color);
          }
          // 填充颜色
          if (fillColor != null) {
            final color = await PlatformFactoryIOS.createUIColor(fillColor);
            await style.set_fillColor(color);
          }
          // 边框宽度
          if (strokeWidth != null) {
            await style.set_lineWidth(strokeWidth);
          }

          await _iosController.updateUserLocationRepresentation(style);
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
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(latLng)..add(cameraUpdate);
      },
      ios: (pool) async {
        final latLng =
            await PlatformFactoryIOS.createCLLocationCoordinate2D(lat, lng);
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
  Future<Marker> addMarker(BuildContext context, MarkerOption option) {
    final lat = option.latLng.latitude;
    final lng = option.latLng.longitude;
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
        if (option.title != null) {
          await markerOption.title(option.title);
        }
        // 设置marker副标题
        if (option.snippet != null) {
          await markerOption.snippet(option.snippet);
        }
        // 设置marker图标
        if (option.iconUri != null) {
          Uint8List iconData = await _getImageData(context, option.iconUri);

          final bitmap =
              await PlatformFactoryAndroid.createandroid_graphics_Bitmap(
                  iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool..add(bitmap)..add(icon);
        }
        // 是否可拖拽
        if (option.draggable != null)
          await markerOption.draggable(option.draggable);

        final marker = await map.addMarker(markerOption);

        // 如果标题不为空就设置可以弹窗
        await marker.setInfoWindowEnable(option.title != null);

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
            await PlatformFactoryIOS.createCLLocationCoordinate2D(lat, lng);

        // 设置经纬度
        await pointAnnotation.set_coordinate(coordinate);

        // 设置标题
        if (option.title != null) {
          await pointAnnotation.set_title(option.title);
        }
        // 设置副标题
        if (option.snippet != null) {
          await pointAnnotation.set_subtitle(option.snippet);
        }
        // 设置图片
        // 设置marker图标
        if (option.iconUri != null) {
          Uint8List iconData = await _getImageData(context, option.iconUri);

          final icon = await PlatformFactoryIOS.createUIImage(iconData);

          // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
          // 供ios的回调去获取
          await PlatformFactoryIOS.pushStack('icon', icon);

          pool..add(icon);
        }
        // 是否可拖拽
        if (option.draggable != null)
          await PlatformFactoryIOS.pushStackJsonable(
              'draggable', option.draggable);

        await _iosController.addAnnotation(pointAnnotation);

        // pointAnnotation不释放, 还有用
        pool..add(coordinate);

        return Marker.ios(pointAnnotation, _iosController);
      },
    );
  }

  /// 批量添加marker
  ///
  /// 根据[options]批量创建Marker, 目前iOS端所有的marker的icon和draggable参数都只能一样
  Future<List<Marker>> addMarkers(
    BuildContext context,
    List<MarkerOption> options,
  ) {
    assert(context != null);
    assert(options != null);

    if (options.isEmpty) return Future.value([]);
    return platform(
      android: (pool) async {
        // 获取地图
        final map = await _androidController.getMap();

        final androidOptions = <com_amap_api_maps_model_MarkerOptions>[];
        for (final option in options) {
          final lat = option.latLng.latitude;
          final lng = option.latLng.longitude;

          // marker经纬度
          final latLng = await AmapMapFluttifyFactoryAndroid
              .createcom_amap_api_maps_model_LatLng__double__double(lat, lng);

          // marker配置
          final markerOption = await AmapMapFluttifyFactoryAndroid
              .createcom_amap_api_maps_model_MarkerOptions__();

          // 设置marker经纬度
          await markerOption.position(latLng);
          // 设置marker标题
          if (option.title != null) {
            await markerOption.title(option.title);
          }
          // 设置marker副标题
          if (option.snippet != null) {
            await markerOption.snippet(option.snippet);
          }
          // 设置marker图标
          if (option.iconUri != null) {
            Uint8List iconData = await _getImageData(context, option.iconUri);

            final bitmap =
                await PlatformFactoryAndroid.createandroid_graphics_Bitmap(
                    iconData);
            final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
                .fromBitmap(bitmap);
            await markerOption.icon(icon);

            androidOptions.add(markerOption);

            pool..add(bitmap)..add(icon);
          }

          // 是否可拖拽
          if (option.draggable != null)
            await markerOption.draggable(option.draggable);

          pool..add(latLng);
        }

        final markers = await map.addMarkers(androidOptions, false);

        // marker不释放, 还有用
        pool
          ..add(map)
          ..addAll(androidOptions);
        return markers.map((it) => Marker.android(it)).toList();
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._iosController = _iosController,
        );

        final iosOptions = <NSObject>[];
        for (final option in options) {
          final lat = option.latLng.latitude;
          final lng = option.latLng.longitude;

          // 创建marker
          final pointAnnotation =
              await AmapMapFluttifyFactoryIOS.createMAPointAnnotation();

          final coordinate =
              await PlatformFactoryIOS.createCLLocationCoordinate2D(lat, lng);

          // 设置经纬度
          await pointAnnotation.set_coordinate(coordinate);

          // 设置标题
          if (option.title != null) {
            await pointAnnotation.set_title(option.title);
          }
          // 设置副标题
          if (option.snippet != null) {
            await pointAnnotation.set_subtitle(option.snippet);
          }
          // 设置图片
          // 设置marker图标
          if (option.iconUri != null) {
            Uint8List iconData = await _getImageData(context, option.iconUri);

            final icon = await PlatformFactoryIOS.createUIImage(iconData);

            // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
            // 供ios的回调去获取
            await PlatformFactoryIOS.pushStack('icon', icon);

            pool..add(icon);
          }
          // 是否可拖拽
          if (option.draggable != null)
            await PlatformFactoryIOS.pushStackJsonable(
                'draggable', option.draggable);

          iosOptions.add(pointAnnotation);

          // pointAnnotation不释放, 还有用
          pool..add(coordinate);
        }

        await _iosController.addAnnotations(iosOptions);

        return iosOptions.map((it) => Marker.ios(it, _iosController)).toList();
      },
    );
  }

  /// 清除所有marker
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
          final latLng = await PlatformFactoryIOS.createCLLocationCoordinate2D(
              point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polyline = await MAPolyline.polylineWithCoordinatesCount(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (width != null)
          await PlatformFactoryIOS.pushStackJsonable('width', width);
        if (strokeColor != null)
          await PlatformFactoryIOS.pushStackJsonable(
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
          final latLng = await PlatformFactoryIOS.createCLLocationCoordinate2D(
              point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polygon = await MAPolygon.polygonWithCoordinatesCount(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (width != null)
          await PlatformFactoryIOS.pushStackJsonable('width', width);
        if (strokeColor != null)
          await PlatformFactoryIOS.pushStackJsonable(
              'strokeColor', strokeColor.value);
        if (fillColor != null)
          await PlatformFactoryIOS.pushStackJsonable(
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

        final latLng = await PlatformFactoryIOS.createCLLocationCoordinate2D(
            point.latitude, point.longitude);

        // 参数
        final circle =
            await MACircle.circleWithCenterCoordinateRadius(latLng, radius);

        // 宽度和颜色需要设置到STACK里去
        if (width != null)
          await PlatformFactoryIOS.pushStackJsonable('width', width);
        if (strokeColor != null)
          await PlatformFactoryIOS.pushStackJsonable(
              'strokeColor', strokeColor.value);
        if (fillColor != null)
          await PlatformFactoryIOS.pushStackJsonable(
              'fillColor', fillColor.value);

        // 设置参数
        await _iosController.addOverlay(circle);

        pool..add(circle);
      },
    );
  }

  /// 设置marker点击监听事件
  Future<void> setMarkerClickListener(OnMarkerClick onMarkerClicked) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMarkerClickListener(
            _androidMapDelegate.._onMarkerClicked = onMarkerClicked);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController
            .set_delegate(_iosMapDelegate.._onMarkerClicked = onMarkerClicked);
      },
    );
  }

  /// 设置marker拖动监听事件
  Future<void> setMarkerDragListener({
    OnMarkerDrag onMarkerDragStart,
    OnMarkerDrag onMarkerDragging,
    OnMarkerDrag onMarkerDragEnd,
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
  Future<void> setMapClickListener(OnMapClick onMapClick) async {
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

  /// 设置地图拖动监听事件
  Future<void> setMapDragListener(OnMapDrag onMapDrag) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnCameraChangeListener(
          _androidMapDelegate.._onMapDrag = onMapDrag,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._onMapDrag = onMapDrag,
        );
      },
    );
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint('didChangeAppLifecycleState: $state');
    switch (state) {
      case AppLifecycleState.resumed:
        _androidController?.onResume();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        _androidController?.onPause();
        break;
      case AppLifecycleState.suspending:
        break;
    }
  }
}

class _IOSMapDelegate extends NSObject with MAMapViewDelegate {
  OnMarkerClick _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapClick _onMapClick;
  OnMapDrag _onMapDrag;
  MAMapView _iosController;

  @override
  Future<void> mapViewDidAnnotationViewTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    super.mapViewDidAnnotationViewTapped(mapView, view);
    if (_onMarkerClicked != null) {
      _onMarkerClicked(
        Marker.ios(
          // 这里由于传入的类型是MAAnnotation, 而fluttify对于抽象类的实体子类的处理方式是找到sdk
          // 内的第一个实体子类进行实例化, 这里如果放任不管取第一个实体子类的话是MAGroundOverlay
          // 跟当前需要的MAPointAnnotation类是冲突的.
          //
          // 解决办法很简单, 把refId取出来放到目标实体类里就行了
          MAPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
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
    MAMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    super.mapViewDidSingleTappedAtCoordinate(mapView, coordinate);
    if (_onMapClick != null) {
      _onMapClick(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }

  @override
  Future<void> mapViewMapDidMoveByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    super.mapViewMapDidMoveByUser(mapView, wasUserAction);
    if (_onMapDrag != null && wasUserAction) {
      final location = await mapView.get_centerCoordinate();
      _onMapDrag(MapDrag(
        latLng: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        com_amap_api_maps_AMap_OnMarkerClickListener,
        com_amap_api_maps_AMap_OnMarkerDragListener,
        com_amap_api_maps_AMap_OnMapClickListener,
        com_amap_api_maps_AMap_OnCameraChangeListener {
  OnMarkerClick _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapDrag _onMapDrag;
  OnMapClick _onMapClick;

  @override
  Future<bool> onMarkerClick(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerClick(var1);
    if (_onMarkerClicked != null) {
      await var1.showInfoWindow();
      _onMarkerClicked(Marker.android(var1));
    }
    return true;
  }

  @override
  Future<void> onMarkerDragStart(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDragStart(var1);
    if (_onMarkerDragStart != null) {
      _onMarkerDragStart(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDrag(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDrag(var1);
    if (_onMarkerDragging != null) {
      _onMarkerDragging(Marker.android(var1));
    }
  }

  @override
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

  @override
  Future<void> onCameraChangeFinish(
    com_amap_api_maps_model_CameraPosition var1,
  ) async {
    super.onCameraChangeFinish(var1);
    if (_onMapDrag != null) {
      final location = await var1.get_target();
      _onMapDrag(MapDrag(
        latLng: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        tilt: await var1.get_tilt(),
        isAbroad: await var1.get_isAbroad(),
      ));
    }
  }
}

mixin _Private {
  Future<Uint8List> _getImageData(BuildContext context, Uri iconUri) async {
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
}
