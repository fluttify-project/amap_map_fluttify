import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_MapConfig extends java_lang_Object  {
  // 生成getters
  Future<double> get_maxZoomLevel() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.MapConfig::get_maxZoomLevel", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_minZoomLevel() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.MapConfig::get_minZoomLevel", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_maxZoomLevel(double maxZoomLevel) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::set_maxZoomLevel', {'refId': refId, "maxZoomLevel": maxZoomLevel});
  
  
  }
  
  Future<void> set_minZoomLevel(double minZoomLevel) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::set_minZoomLevel', {'refId': refId, "minZoomLevel": minZoomLevel});
  
  
  }
  

  // 生成方法们
  Future<int> getAnchorY() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getAnchorY([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getAnchorY', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setAnchorY(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setAnchorY([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setAnchorY', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getAnchorX() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getAnchorX([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getAnchorX', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setAnchorX(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setAnchorX([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setAnchorX', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getChangedCounter() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getChangedCounter([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getChangedCounter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> resetChangedCounter() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::resetChangedCounter([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::resetChangedCounter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isMapStateChange() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isMapStateChange([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isMapStateChange', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getChangeRatio() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getChangeRatio([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getChangeRatio', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getChangeGridRatio() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getChangeGridRatio([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getChangeGridRatio', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isZoomChanged() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isZoomChanged([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isZoomChanged', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isTiltChanged() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isTiltChanged([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isTiltChanged', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isBearingChanged() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isBearingChanged([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isBearingChanged', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isIndoorEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isIndoorEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isIndoorEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setIndoorEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setIndoorEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setIndoorEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isBuildingEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isBuildingEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isBuildingEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setBuildingEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setBuildingEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setBuildingEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isMapTextEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isMapTextEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isMapTextEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapTextEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapTextEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapTextEnable', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isTrafficEnabled([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isTrafficEnabled', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setTrafficEnabled([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setTrafficEnabled', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isNeedUpdateZoomControllerState() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isNeedUpdateZoomControllerState([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isNeedUpdateZoomControllerState', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getSX() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getSX([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getSX', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSX(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setSX([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setSX', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getSY() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getSY([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getSY', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSY(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setSY([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setSY', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_IPoint> getMapGeoCenter() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapGeoCenter([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapGeoCenter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_autonavi_amap_mapcore_IPoint()..refId = result);
      return com_autonavi_amap_mapcore_IPoint()..refId = result;
    }
  }
  
  Future<double> getSZ() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getSZ([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getSZ', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSZ(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setSZ([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setSZ', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getSC() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getSC([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getSC', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSC(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setSC([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setSC', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getSR() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getSR([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getSR', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSR(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setSR([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setSR', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_autonavi_amap_mapcore_Rectangle> getGeoRectangle() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getGeoRectangle([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getGeoRectangle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_autonavi_amap_mapcore_Rectangle()..refId = result);
      return com_autonavi_amap_mapcore_Rectangle()..refId = result;
    }
  }
  
  Future<void> setMaxZoomLevel(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMaxZoomLevel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMaxZoomLevel', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMinZoomLevel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMinZoomLevel', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getMaxZoomLevel() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMaxZoomLevel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMaxZoomLevel', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMinZoomLevel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMinZoomLevel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isSetLimitZoomLevel() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isSetLimitZoomLevel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isSetLimitZoomLevel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLngBounds> getLimitLatLngBounds() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getLimitLatLngBounds([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getLimitLatLngBounds', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_LatLngBounds()..refId = result);
      return com_amap_api_maps_model_LatLngBounds()..refId = result;
    }
  }
  
  Future<void> setLimitLatLngBounds(com_amap_api_maps_model_LatLngBounds var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setLimitLatLngBounds([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setLimitLatLngBounds', {"var1": var1.refId, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::resetMinMaxZoomPreference([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::resetMinMaxZoomPreference', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> updateMapRectNextFrame(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::updateMapRectNextFrame([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::updateMapRectNextFrame', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapPerPixelUnitLength(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapPerPixelUnitLength([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapPerPixelUnitLength', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getMapPerPixelUnitLength() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapPerPixelUnitLength([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapPerPixelUnitLength', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setCustomStylePath(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setCustomStylePath([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setCustomStylePath', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getCustomStylePath() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getCustomStylePath([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getCustomStylePath', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getCustomStyleID() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getCustomStyleID([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getCustomStyleID', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setCustomStyleID(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setCustomStyleID([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setCustomStyleID', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setCustomStyleEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setCustomStyleEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setCustomStyleEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isCustomStyleEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isCustomStyleEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isCustomStyleEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getMapStyleTime() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapStyleTime([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapStyleTime', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapStyleTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapStyleTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapStyleTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getMapStyleMode() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapStyleMode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapStyleMode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapStyleMode(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapStyleMode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapStyleMode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getMapStyleState() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapStyleState([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapStyleState', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapStyleState(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapStyleState([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapStyleState', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setCustomTextureResourcePath([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setCustomTextureResourcePath', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getCustomTextureResourcePath() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getCustomTextureResourcePath([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getCustomTextureResourcePath', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isProFunctionAuthEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isProFunctionAuthEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isProFunctionAuthEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setProFunctionAuthEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setProFunctionAuthEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setProFunctionAuthEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isUseProFunction() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isUseProFunction([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isUseProFunction', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setUseProFunction(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setUseProFunction([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setUseProFunction', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setCustomBackgroundColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setCustomBackgroundColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setCustomBackgroundColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getCustomBackgroundColor() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getCustomBackgroundColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getCustomBackgroundColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapZoomScale(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapZoomScale([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapZoomScale', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getMapZoomScale() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapZoomScale([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapZoomScale', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapWidth(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapWidth([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapWidth', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getMapWidth() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapWidth([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setMapHeight(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapHeight([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapHeight', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getMapHeight() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapHeight([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapHeight', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setMapLanguage([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setMapLanguage', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getMapLanguage() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMapLanguage([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMapLanguage', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setHideLogoEnble(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setHideLogoEnble([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setHideLogoEnble', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isHideLogoEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isHideLogoEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isHideLogoEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setWorldMapEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setWorldMapEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setWorldMapEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isWorldMapEnable() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::isWorldMapEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::isWorldMapEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getSkyHeight() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getSkyHeight([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getSkyHeight', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSkyHeight(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::setSkyHeight([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::setSkyHeight', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<List<double>> getViewMatrix() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getViewMatrix([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getViewMatrix', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getProjectionMatrix([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getProjectionMatrix', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<List<double>> getMvpMatrix() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getMvpMatrix([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getMvpMatrix', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> updateFinalMatrix() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::updateFinalMatrix([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::updateFinalMatrix', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<List<int>> getCurTileIds() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapConfig@$refId::getCurTileIds([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MapConfig::getCurTileIds', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}