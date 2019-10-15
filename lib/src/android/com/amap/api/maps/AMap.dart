import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_AMap extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_CameraPosition> getCameraPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getCameraPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getCameraPosition', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CameraPosition()..refId = result;
    }
  }
  
  Future<double> getMaxZoomLevel() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMaxZoomLevel([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMaxZoomLevel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getMinZoomLevel() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMinZoomLevel([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMinZoomLevel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> moveCamera(com_amap_api_maps_CameraUpdate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::moveCamera([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::moveCamera', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> animateCamera(com_amap_api_maps_CameraUpdate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::animateCamera([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::animateCamera', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> stopAnimation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::stopAnimation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::stopAnimation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_NavigateArrow> addNavigateArrow(com_amap_api_maps_model_NavigateArrowOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addNavigateArrow([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addNavigateArrow', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_NavigateArrow()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_Polyline> addPolyline(com_amap_api_maps_model_PolylineOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addPolyline([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addPolyline', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Polyline()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BuildingOverlay> addBuildingOverlay() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addBuildingOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addBuildingOverlay', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BuildingOverlay()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_Circle> addCircle(com_amap_api_maps_model_CircleOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addCircle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addCircle', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Circle()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_Arc> addArc(com_amap_api_maps_model_ArcOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addArc([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addArc', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Arc()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_Polygon> addPolygon(com_amap_api_maps_model_PolygonOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addPolygon([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addPolygon', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Polygon()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GroundOverlay> addGroundOverlay(com_amap_api_maps_model_GroundOverlayOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addGroundOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addGroundOverlay', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GroundOverlay()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_Marker> addMarker(com_amap_api_maps_model_MarkerOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addMarker([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addMarker', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Marker()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GL3DModel> addGL3DModel(com_amap_api_maps_model_GL3DModelOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addGL3DModel([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addGL3DModel', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GL3DModel()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_Text> addText(com_amap_api_maps_model_TextOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addText([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addText', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Text()..refId = result;
    }
  }
  
  Future<List<com_amap_api_maps_model_Marker>> addMarkers(List<com_amap_api_maps_model_MarkerOptions> var1, bool var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addMarkers([\'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addMarkers', {"var1": var1.map((it) => it.refId).toList(), "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_Marker()..refId = it).toList();
    }
  }
  
  Future<List<com_amap_api_maps_model_Marker>> getMapScreenMarkers() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMapScreenMarkers([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMapScreenMarkers', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_Marker()..refId = it).toList();
    }
  }
  
  Future<com_amap_api_maps_model_TileOverlay> addTileOverlay(com_amap_api_maps_model_TileOverlayOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addTileOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addTileOverlay', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TileOverlay()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_MultiPointOverlay> addMultiPointOverlay(com_amap_api_maps_model_MultiPointOverlayOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addMultiPointOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addMultiPointOverlay', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_MultiPointOverlay()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlay> addParticleOverlay(com_amap_api_maps_model_particle_ParticleOverlayOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addParticleOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addParticleOverlay', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlay()..refId = result;
    }
  }
  
  Future<void> clear() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::clear([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::clear', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getMapType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMapType([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMapType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMapType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMapType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isTrafficEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::isTrafficEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::isTrafficEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setTrafficEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setTrafficEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setTrafficEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showMapText(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::showMapText([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::showMapText', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showIndoorMap(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::showIndoorMap([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::showIndoorMap', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showBuildings(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::showBuildings([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::showBuildings', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMyTrafficStyle(com_amap_api_maps_model_MyTrafficStyle var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMyTrafficStyle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMyTrafficStyle', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_MyTrafficStyle> getMyTrafficStyle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMyTrafficStyle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMyTrafficStyle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_MyTrafficStyle()..refId = result;
    }
  }
  
  Future<bool> isMyLocationEnabled() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::isMyLocationEnabled([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::isMyLocationEnabled', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMyLocationEnabled(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMyLocationEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMyLocationEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<android_location_Location> getMyLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMyLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMyLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return android_location_Location()..refId = result;
    }
  }
  
  Future<void> setLocationSource(com_amap_api_maps_LocationSource var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setLocationSource([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setLocationSource', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMyLocationStyle(com_amap_api_maps_model_MyLocationStyle var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMyLocationStyle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMyLocationStyle', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_MyLocationStyle> getMyLocationStyle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMyLocationStyle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMyLocationStyle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_MyLocationStyle()..refId = result;
    }
  }
  
  Future<void> setMyLocationType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMyLocationType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMyLocationType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMyLocationRotateAngle(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMyLocationRotateAngle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMyLocationRotateAngle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_UiSettings> getUiSettings() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getUiSettings([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getUiSettings', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_UiSettings()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_Projection> getProjection() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getProjection([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getProjection', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_Projection()..refId = result;
    }
  }
  
  Future<void> setOnCameraChangeListener(com_amap_api_maps_AMap_OnCameraChangeListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnCameraChangeListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnCameraChangeListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnCameraChangeListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnCameraChangeListener::onCameraChange':
              // 日志打印
              print('fluttify-dart-callback: onCameraChange([])');
        
                // 调用回调方法
              var1?.onCameraChange(com_amap_api_maps_model_CameraPosition()..refId = (args['var1']));
              break;
            case 'Callback::com.amap.api.maps.AMap.OnCameraChangeListener::onCameraChangeFinish':
              // 日志打印
              print('fluttify-dart-callback: onCameraChangeFinish([])');
        
                // 调用回调方法
              var1?.onCameraChangeFinish(com_amap_api_maps_model_CameraPosition()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMapClickListener(com_amap_api_maps_AMap_OnMapClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMapClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMapClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMapClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMapClickListener::onMapClick':
              // 日志打印
              print('fluttify-dart-callback: onMapClick([])');
        
                // 调用回调方法
              var1?.onMapClick(com_amap_api_maps_model_LatLng()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMapTouchListener(com_amap_api_maps_AMap_OnMapTouchListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMapTouchListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMapTouchListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMapTouchListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMapTouchListener::onTouch':
              // 日志打印
              print('fluttify-dart-callback: onTouch([])');
        
                // 调用回调方法
              var1?.onTouch(android_view_MotionEvent()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnPOIClickListener(com_amap_api_maps_AMap_OnPOIClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnPOIClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnPOIClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnPOIClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnPOIClickListener::onPOIClick':
              // 日志打印
              print('fluttify-dart-callback: onPOIClick([])');
        
                // 调用回调方法
              var1?.onPOIClick(com_amap_api_maps_model_Poi()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMyLocationChangeListener(com_amap_api_maps_AMap_OnMyLocationChangeListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMyLocationChangeListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMyLocationChangeListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMyLocationChangeListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMyLocationChangeListener::onMyLocationChange':
              // 日志打印
              print('fluttify-dart-callback: onMyLocationChange([])');
        
                // 调用回调方法
              var1?.onMyLocationChange(android_location_Location()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMapLongClickListener(com_amap_api_maps_AMap_OnMapLongClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMapLongClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMapLongClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMapLongClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMapLongClickListener::onMapLongClick':
              // 日志打印
              print('fluttify-dart-callback: onMapLongClick([])');
        
                // 调用回调方法
              var1?.onMapLongClick(com_amap_api_maps_model_LatLng()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMarkerClickListener(com_amap_api_maps_AMap_OnMarkerClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMarkerClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMarkerClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMarkerClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMarkerClickListener::onMarkerClick':
              // 日志打印
              print('fluttify-dart-callback: onMarkerClick([])');
        
                // 调用回调方法
              var1?.onMarkerClick(com_amap_api_maps_model_Marker()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnPolylineClickListener(com_amap_api_maps_AMap_OnPolylineClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnPolylineClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnPolylineClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnPolylineClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnPolylineClickListener::onPolylineClick':
              // 日志打印
              print('fluttify-dart-callback: onPolylineClick([])');
        
                // 调用回调方法
              var1?.onPolylineClick(com_amap_api_maps_model_Polyline()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMarkerDragListener(com_amap_api_maps_AMap_OnMarkerDragListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMarkerDragListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMarkerDragListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMarkerDragListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMarkerDragListener::onMarkerDragStart':
              // 日志打印
              print('fluttify-dart-callback: onMarkerDragStart([])');
        
                // 调用回调方法
              var1?.onMarkerDragStart(com_amap_api_maps_model_Marker()..refId = (args['var1']));
              break;
            case 'Callback::com.amap.api.maps.AMap.OnMarkerDragListener::onMarkerDrag':
              // 日志打印
              print('fluttify-dart-callback: onMarkerDrag([])');
        
                // 调用回调方法
              var1?.onMarkerDrag(com_amap_api_maps_model_Marker()..refId = (args['var1']));
              break;
            case 'Callback::com.amap.api.maps.AMap.OnMarkerDragListener::onMarkerDragEnd':
              // 日志打印
              print('fluttify-dart-callback: onMarkerDragEnd([])');
        
                // 调用回调方法
              var1?.onMarkerDragEnd(com_amap_api_maps_model_Marker()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnInfoWindowClickListener(com_amap_api_maps_AMap_OnInfoWindowClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnInfoWindowClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnInfoWindowClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnInfoWindowClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnInfoWindowClickListener::onInfoWindowClick':
              // 日志打印
              print('fluttify-dart-callback: onInfoWindowClick([])');
        
                // 调用回调方法
              var1?.onInfoWindowClick(com_amap_api_maps_model_Marker()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setInfoWindowAdapter(com_amap_api_maps_AMap_InfoWindowAdapter var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setInfoWindowAdapter([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setInfoWindowAdapter', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCommonInfoWindowAdapter(com_amap_api_maps_AMap_CommonInfoWindowAdapter var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setCommonInfoWindowAdapter([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setCommonInfoWindowAdapter', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setCommonInfoWindowAdapter::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
        
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMapLoadedListener(com_amap_api_maps_AMap_OnMapLoadedListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMapLoadedListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMapLoadedListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMapLoadedListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMapLoadedListener::onMapLoaded':
              // 日志打印
              print('fluttify-dart-callback: onMapLoaded([])');
        
                // 调用回调方法
              var1?.onMapLoaded();
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnIndoorBuildingActiveListener(com_amap_api_maps_AMap_OnIndoorBuildingActiveListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnIndoorBuildingActiveListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnIndoorBuildingActiveListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnIndoorBuildingActiveListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnIndoorBuildingActiveListener::OnIndoorBuilding':
              // 日志打印
              print('fluttify-dart-callback: OnIndoorBuilding([])');
        
                // 调用回调方法
              var1?.OnIndoorBuilding(com_amap_api_maps_model_IndoorBuildingInfo()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setOnMultiPointClickListener(com_amap_api_maps_AMap_OnMultiPointClickListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setOnMultiPointClickListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setOnMultiPointClickListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setOnMultiPointClickListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMultiPointClickListener::onPointClick':
              // 日志打印
              print('fluttify-dart-callback: onPointClick([])');
        
                // 调用回调方法
              var1?.onPointClick(com_amap_api_maps_model_MultiPointItem()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> getMapPrintScreen(com_amap_api_maps_AMap_onMapPrintScreenListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMapPrintScreen([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMapPrintScreen', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::getMapPrintScreen::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.onMapPrintScreenListener::onMapPrint':
              // 日志打印
              print('fluttify-dart-callback: onMapPrint([])');
        
                // 调用回调方法
              var1?.onMapPrint(android_graphics_drawable_Drawable()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> getMapScreenShot(com_amap_api_maps_AMap_OnMapScreenShotListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMapScreenShot([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMapScreenShot', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::getMapScreenShot::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.AMap.OnMapScreenShotListener::onMapScreenShot':
              // 日志打印
              print('fluttify-dart-callback: onMapScreenShot([])');
        
                // 调用回调方法
              var1?.onMapScreenShot(android_graphics_Bitmap()..refId = (args['var1']));
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getScalePerPixel() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getScalePerPixel([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getScalePerPixel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> runOnDrawFrame() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::runOnDrawFrame([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::runOnDrawFrame', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removecache() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::removecache([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::removecache', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomRenderer(com_amap_api_maps_CustomRenderer var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setCustomRenderer([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setCustomRenderer', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setPointToCenter(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setPointToCenter([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setPointToCenter', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapTextZIndex(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMapTextZIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMapTextZIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLoadOfflineData(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setLoadOfflineData([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setLoadOfflineData', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getMapTextZIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMapTextZIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMapTextZIndex', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> reloadMap() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::reloadMap([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::reloadMap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRenderFps(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setRenderFps([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setRenderFps', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setIndoorBuildingInfo(com_amap_api_maps_model_IndoorBuildingInfo var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setIndoorBuildingInfo([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setIndoorBuildingInfo', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAMapGestureListener(com_amap_api_maps_model_AMapGestureListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setAMapGestureListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setAMapGestureListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.AMap::setAMapGestureListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onDoubleTap':
              // 日志打印
              print('fluttify-dart-callback: onDoubleTap([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onDoubleTap(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onSingleTap':
              // 日志打印
              print('fluttify-dart-callback: onSingleTap([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onSingleTap(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onFling':
              // 日志打印
              print('fluttify-dart-callback: onFling([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onFling(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onScroll':
              // 日志打印
              print('fluttify-dart-callback: onScroll([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onScroll(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onLongPress':
              // 日志打印
              print('fluttify-dart-callback: onLongPress([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onLongPress(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onDown':
              // 日志打印
              print('fluttify-dart-callback: onDown([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onDown(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onUp':
              // 日志打印
              print('fluttify-dart-callback: onUp([\'var1\':$args[var1], \'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onUp(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.maps.model.AMapGestureListener::onMapStable':
              // 日志打印
              print('fluttify-dart-callback: onMapStable([])');
        
                // 调用回调方法
              var1?.onMapStable();
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getZoomToSpanLevel(com_amap_api_maps_model_LatLng var1, com_amap_api_maps_model_LatLng var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getZoomToSpanLevel([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getZoomToSpanLevel', {"var1": var1.refId, "var2": var2.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_InfoWindowAnimationManager> getInfoWindowAnimationManager() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getInfoWindowAnimationManager([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getInfoWindowAnimationManager', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_InfoWindowAnimationManager()..refId = result;
    }
  }
  
  Future<void> setMaskLayerParams(int var1, int var2, int var3, int var4, int var5, int var6) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMaskLayerParams([\'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5, \'var6\':$var6])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMaskLayerParams', {"var1": var1, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "var6": var6, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMaxZoomLevel(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMaxZoomLevel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMaxZoomLevel', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMinZoomLevel(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMinZoomLevel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMinZoomLevel', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> resetMinMaxZoomPreference() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::resetMinMaxZoomPreference([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::resetMinMaxZoomPreference', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapStatusLimits(com_amap_api_maps_model_LatLngBounds var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMapStatusLimits([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMapStatusLimits', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_CrossOverlay> addCrossOverlay(com_amap_api_maps_model_CrossOverlayOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addCrossOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addCrossOverlay', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CrossOverlay()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_RouteOverlay> addRouteOverlay() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::addRouteOverlay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::addRouteOverlay', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_RouteOverlay()..refId = result;
    }
  }
  
  Future<List<double>> getViewMatrix() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getViewMatrix([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getViewMatrix', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<List<double>> getProjectionMatrix() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getProjectionMatrix([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getProjectionMatrix', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapCustomEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMapCustomEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMapCustomEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomMapStylePath(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setCustomMapStylePath([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setCustomMapStylePath', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomMapStyle(com_amap_api_maps_model_CustomMapStyleOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setCustomMapStyle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setCustomMapStyle', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomMapStyleID(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setCustomMapStyleID([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setCustomMapStyleID', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCustomTextureResourcePath(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setCustomTextureResourcePath([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setCustomTextureResourcePath', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRenderMode(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setRenderMode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setRenderMode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> getP20MapCenter(com_autonavi_amap_mapcore_IPoint var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getP20MapCenter([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getP20MapCenter', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getMapContentApprovalNumber() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getMapContentApprovalNumber([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getMapContentApprovalNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getSatelliteImageApprovalNumber() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::getSatelliteImageApprovalNumber([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::getSatelliteImageApprovalNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapLanguage(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setMapLanguage([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setMapLanguage', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRoadArrowEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.AMap@$refId::setRoadArrowEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.AMap::setRoadArrowEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}