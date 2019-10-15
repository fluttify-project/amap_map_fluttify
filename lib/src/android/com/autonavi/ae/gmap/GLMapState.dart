import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_GLMapState extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<void> lonlat2Geo(double var0, double var2, com_autonavi_amap_mapcore_IPoint var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::lonlat2Geo([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::lonlat2Geo', {"var0": var0, "var2": var2, "var4": var4.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> geo2LonLat(int var0, int var1, com_autonavi_amap_mapcore_DPoint var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::geo2LonLat([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::geo2LonLat', {"var0": var0, "var1": var1, "var2": var2.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> screenToP20Point(int var1, int var2, android_graphics_Point var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::screenToP20Point([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::screenToP20Point', {"var1": var1, "var2": var2, "var3": var3.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> p20ToScreenPoint(int var1, int var2, com_autonavi_amap_mapcore_FPoint var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::p20ToScreenPoint([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::p20ToScreenPoint', {"var1": var1, "var2": var2, "var3": var3.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> getMapGeoCenter(com_autonavi_amap_mapcore_IPoint var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getMapGeoCenter([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getMapGeoCenter', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapGeoCenter(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::setMapGeoCenter([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::setMapGeoCenter', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setCameraDegree(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::setCameraDegree([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::setCameraDegree', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapAngle(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::setMapAngle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::setMapAngle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMapZoomer(double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::setMapZoomer([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::setMapZoomer', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getMapZoomer() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getMapZoomer([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getMapZoomer', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getCameraDegree() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getCameraDegree([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getCameraDegree', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getMapAngle() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getMapAngle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getMapAngle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> recalculate() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::recalculate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::recalculate', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> reset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::reset([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::reset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getMapLenWithWin(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getMapLenWithWin([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getMapLenWithWin', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getGLUnitWithWin(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getGLUnitWithWin([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getGLUnitWithWin', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getNativeInstance() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getNativeInstance([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getNativeInstance', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> getViewMatrix(List<double> var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getViewMatrix([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getViewMatrix', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> getProjectionMatrix(List<double> var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getProjectionMatrix([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getProjectionMatrix', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::getSkyHeight([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::getSkyHeight', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setNativeMapengineState(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState@$refId::setNativeMapengineState([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::setNativeMapengineState', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> calMapZoomScalefactor(int var0, int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::calMapZoomScalefactor([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::calMapZoomScalefactor', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> nativeNewInstance(int var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeNewInstance([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeNewInstance', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeScreenToP20Point(int var0, double var2, double var3, android_graphics_Point var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeScreenToP20Point([\'var0\':$var0, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeScreenToP20Point', {"var0": var0, "var2": var2, "var3": var3, "var4": var4.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeP20ToScreenPoint(int var0, int var2, int var3, int var4, android_graphics_PointF var5) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeP20ToScreenPoint([\'var0\':$var0, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeP20ToScreenPoint', {"var0": var0, "var2": var2, "var3": var3, "var4": var4, "var5": var5.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetMapCenter(int var0, int var2, int var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeSetMapCenter([\'var0\':$var0, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeSetMapCenter', {"var0": var0, "var2": var2, "var3": var3});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeGetMapCenter(int var0, android_graphics_Point var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetMapCenter([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetMapCenter', {"var0": var0, "var2": var2.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> nativeGetMapZoomer(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetMapZoomer([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetMapZoomer', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetMapZoomer(int var0, double var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeSetMapZoomer([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeSetMapZoomer', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetMapAngle(int var0, double var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeSetMapAngle([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeSetMapAngle', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> nativeGetCameraDegree(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetCameraDegree([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetCameraDegree', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> nativeGetMapAngle(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetMapAngle([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetMapAngle', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeSetCameraDegree(int var0, double var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeSetCameraDegree([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeSetCameraDegree', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeRecalculate(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeRecalculate([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeRecalculate', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeStateDestroy(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeStateDestroy([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeStateDestroy', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeGetViewMatrix(int var0, List<double> var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetViewMatrix([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetViewMatrix', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> nativeGetProjectionMatrix(int var0, List<double> var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetProjectionMatrix([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetProjectionMatrix', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> nativeGetSkyHeight(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetSkyHeight([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetSkyHeight', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> nativeGetGLUnitWithWin(int var0, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeGetGLUnitWithWin([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeGetGLUnitWithWin', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> nativeCalMapZoomScalefactor(int var0, int var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.GLMapState::nativeCalMapZoomScalefactor([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.GLMapState::nativeCalMapZoomScalefactor', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}