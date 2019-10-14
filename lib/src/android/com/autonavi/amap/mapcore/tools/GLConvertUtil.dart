import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_tools_GLConvertUtil extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<int> getInt(List<int> var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::getInt([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::getInt', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> getLong(List<int> var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::getLong([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::getLong', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> getInt2(List<int> var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::getInt2([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::getInt2', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> getUShort(List<int> var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::getUShort([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::getUShort', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<List<int>> convertInt(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::convertInt([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::convertInt', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<List<int>> convertShort(int var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::convertShort([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::convertShort', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> convertDouble(List<int> var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::convertDouble([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::convertDouble', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> writeInt(List<int> var0, int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::writeInt([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::writeInt', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> moveArray(List<int> var0, int var1, List<int> var2, int var3, int var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::moveArray([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::moveArray', {"var0": var0, "var1": var1, "var2": var2, "var3": var3, "var4": var4});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<List<int>> get1BString(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::get1BString([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::get1BString', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getString(List<int> var0, int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::getString([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::getString', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<List<int>> getSubBytes(List<int> var0, int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GLConvertUtil::getSubBytes([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.tools.GLConvertUtil::getSubBytes', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}