import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_FileUtil extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<String> getMapBaseStorage(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::getMapBaseStorage([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::getMapBaseStorage', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getExternalStroragePath(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::getExternalStroragePath([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::getExternalStroragePath', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> writeDatasToFile(String var0, List<int> var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::writeDatasToFile([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::writeDatasToFile', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<List<int>> readFileContents(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::readFileContents([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::readFileContents', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> createNoMediaFileIfNotExist(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::createNoMediaFileIfNotExist([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::createNoMediaFileIfNotExist', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> saveFile(String var0, String var1, bool var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::saveFile([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::saveFile', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<List<int>> readFileContentsFromAssets(android_content_Context var0, String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::readFileContentsFromAssets([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::readFileContentsFromAssets', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getName(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::getName([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::getName', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> indexOfLastSeparator(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FileUtil::indexOfLastSeparator([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.FileUtil::indexOfLastSeparator', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}