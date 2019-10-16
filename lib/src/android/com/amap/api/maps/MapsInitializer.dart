import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_MapsInitializer extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<void> initialize(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::initialize([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::initialize', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setNetWorkEnable(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::setNetWorkEnable([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::setNetWorkEnable', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> getNetWorkEnable() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::getNetWorkEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::getNetWorkEnable', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setApiKey(String var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::setApiKey([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::setApiKey', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getVersion() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::getVersion([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::getVersion', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> loadWorldGridMap(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::loadWorldGridMap([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::loadWorldGridMap', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> isLoadWorldGridMap() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::isLoadWorldGridMap([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::isLoadWorldGridMap', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setBuildingHeight(int var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::setBuildingHeight([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::setBuildingHeight', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setDownloadCoordinateConvertLibrary(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::setDownloadCoordinateConvertLibrary([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::setDownloadCoordinateConvertLibrary', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> isDownloadCoordinateConvertLibrary() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::isDownloadCoordinateConvertLibrary([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::isDownloadCoordinateConvertLibrary', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setHost(String var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::setHost([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::setHost', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setProtocol(int var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::setProtocol([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::setProtocol', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> getProtocol() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::getProtocol([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::getProtocol', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> closeTileOverlay(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::closeTileOverlay([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::closeTileOverlay', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> isTileOverlayClosed() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapsInitializer::isTileOverlayClosed([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapsInitializer::isTileOverlayClosed', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}