import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'models.dart';

typedef void OnMarkerClick(Marker marker);

class AmapController {
  AmapController.android(this.androidController);

  AmapController.ios(this.iosController);

  com_amap_api_maps_MapView androidController;
  MAMapView iosController;

  /// 是否显示我的位置
  Future<void> showMyLocation(bool show) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final locationStyle = await ObjectFactory_Android
            .createcom_amap_api_maps_model_MyLocationStyle__();
        await locationStyle?.showMyLocation(show);
        await map.setMyLocationStyle(locationStyle);
        await map.setMyLocationEnabled(show);

        pool..add(map)..add(locationStyle);
      },
      ios: (pool) async {
        await iosController.set_showsUserLocation(show);

        if (show) {
          await iosController.setUserTrackingModeAnimated(
              MAUserTrackingMode.MAUserTrackingModeFollow, true);
        }
      },
    );
  }

  /// 是否显示室内地图
  Future showIndoorMap(bool show) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.showIndoorMap(show);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_showsIndoorMap(show);
      },
    );
  }

  /// 选择显示图层
  Future setMapType(MapType mapType) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
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
            await iosController.set_mapType(MAMapType.MAMapTypeStandard);
            break;
          case MapType.Satellite:
            await iosController.set_mapType(MAMapType.MAMapTypeSatellite);
            break;
          case MapType.Night:
            await iosController.set_mapType(MAMapType.MAMapTypeStandardNight);
            break;
          case MapType.Navi:
            await iosController.set_mapType(MAMapType.MAMapTypeNavi);
            break;
          case MapType.Bus:
            await iosController.set_mapType(MAMapType.MAMapTypeBus);
            break;
        }
      },
    );
  }

  /// 显示路况信息
  Future showTraffic(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.setTrafficEnabled(enable);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_showTraffic(enable);
      },
    );
  }

  /// 显示缩放控件
  Future showZoomControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
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
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setCompassEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_showsCompass(enable);
      },
    );
  }

  /// 显示定位按钮
  Future showLocateControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
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
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScaleControlsEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_showsScale(enable);
      },
    );
  }

  /// 缩放手势使能
  Future setZoomGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomEnabled(enable);
      },
    );
  }

  /// 滑动手势使能
  Future setScrollGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScrollGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_scrollEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future setRotateGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setRotateGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_rotateEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future setTiltGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setTiltGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 所有手势使能
  Future setAllGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setAllGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomEnabled(enable);
        await iosController.set_scrollEnabled(enable);
        await iosController.set_rotateEnabled(enable);
        await iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 设置缩放大小
  Future setZoomLevel(double level, {bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
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
        await iosController.setZoomLevelAnimated(level, animated);
      },
    );
  }

  /// 放大一个等级
  Future zoomIn({bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
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
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.setZoomLevelAnimated(currentLevel + 1, animated);
      },
    );
  }

  /// 放大一个等级
  Future zoomOut({bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
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
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.setZoomLevelAnimated(currentLevel - 1, animated);
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
        final map = await androidController.getMap();

        final latLng = await ObjectFactory_Android
            .createcom_amap_api_maps_model_LatLng__double__double(lat, lng);
        final cameraPosition = await ObjectFactory_Android
            .createcom_amap_api_maps_model_CameraPosition__com_amap_api_maps_model_LatLng__float__float__float(
                latLng, zoomLevel, 0, 0);
        final cameraUpdate = await com_amap_api_maps_CameraUpdateFactory
            .newCameraPosition(cameraPosition);
        await map.moveCamera(cameraUpdate);

        pool..add(map)..add(latLng)..add(cameraUpdate);
      },
      ios: (pool) async {
        final latLng =
            await ObjectFactory_iOS.createCLLocationCoordinate2D(lat, lng);
        await iosController.setCenterCoordinateAnimated(latLng, animated);

        pool..add(latLng);
      },
    );
  }

  /// 添加marker
  ///
  /// 在纬度[lat], 经度[lng]的位置添加marker, 并设置标题[title]和副标题[snippet], [iconUri]
  /// 可以是图片url, asset路径或者文件路径
  Future addMarker(
    BuildContext context,
    LatLng point, {
    String title,
    String snippet,
    Uri iconUri,
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

    final lat = point.lat;
    final lng = point.lng;
    return platform(
      android: (pool) async {
        // 获取地图
        final map = await androidController.getMap();

        // marker经纬度
        final latLng = await ObjectFactory_Android
            .createcom_amap_api_maps_model_LatLng__double__double(lat, lng);

        // marker配置
        final markerOption = await ObjectFactory_Android
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
              await ObjectFactory_Android.createandroid_graphics_Bitmap(
                  iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool..add(bitmap)..add(icon);
        }

        final marker = await map.addMarker(markerOption);

        pool..add(map)..add(latLng)..add(markerOption)..add(marker);
      },
      ios: (pool) async {
        await iosController.set_delegate(IOSMapDelegate());

        // 创建marker
        final pointAnnotation =
            await ObjectFactory_iOS.createMAPointAnnotation();

        final coordinate =
            await ObjectFactory_iOS.createCLLocationCoordinate2D(lat, lng);

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

          final icon = await ObjectFactory_iOS.createUIImage(iconData);

          // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
          // 供ios的回调去获取
          await ObjectFactory_iOS.pushStack('icon', icon);

          pool..add(icon);
        }

        await iosController.addAnnotation(pointAnnotation);

        pool..add(pointAnnotation)..add(coordinate);
      },
    );
  }

  /// 添加线
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[color]
  Future<void> addPolyline(List<LatLng> points, {double width, Color color}) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final point in points) {
          final latLng = await ObjectFactory_Android
              .createcom_amap_api_maps_model_LatLng__double__double(
                  point.lat, point.lng);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polylineOptions = await ObjectFactory_Android
            .createcom_amap_api_maps_model_PolylineOptions__();

        // 添加参数
        await polylineOptions.addAll(latLngList);
        if (width != null) {
          await polylineOptions.width(width);
        }
        if (color != null) {
          await polylineOptions.color(Int32List.fromList([color.value])[0]);
        }

        // 设置参数
        await map.addPolyline(polylineOptions);

        pool
          ..add(map)
          ..add(polylineOptions)
          ..addAll(latLngList);
      },
      ios: (pool) async {
        await iosController.set_delegate(IOSMapDelegate());

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList = [];
        for (final point in points) {
          final latLng = await ObjectFactory_iOS.createCLLocationCoordinate2D(
              point.lat, point.lng);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polyline = await MAPolyline.polylineWithCoordinatesCount(
            latLngList, latLngList.length);

        // 设置参数
        await iosController.addOverlay(polyline);

        // 宽度和颜色需要设置到STACK里去
        ObjectFactory_iOS.pushStackJsonable('width', width);

        pool
          ..add(polyline)
          ..addAll(latLngList);
      },
    );
  }

  Future<void> setMarkerClickListener(OnMarkerClick onMarkerClicked) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMarkerClickListener(
            AndroidMapDelegate(onMarkerClicked: onMarkerClicked));

        pool..add(map);
      },
      ios: (pool) async {
        await iosController
            .set_delegate(IOSMapDelegate(onMarkerClicked: onMarkerClicked));
      },
    );
  }
}

class IOSMapDelegate extends NSObject with MAMapViewDelegate {
  final OnMarkerClick onMarkerClicked;

  IOSMapDelegate({this.onMarkerClicked});

  @override
  Future<void> mapViewDidAnnotationViewTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    super.mapViewDidAnnotationViewTapped(mapView, view);
    if (onMarkerClicked != null) {
      onMarkerClicked(Marker.ios(view));
    }
  }
}

class AndroidMapDelegate extends java_lang_Object
    with com_amap_api_maps_AMap_OnMarkerClickListener {
  final OnMarkerClick onMarkerClicked;

  AndroidMapDelegate({this.onMarkerClicked});

  @override
  Future<bool> onMarkerClick(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerClick(var1);
    if (onMarkerClicked != null) {
      onMarkerClicked(Marker.android(var1));
    }
    return true;
  }
}
