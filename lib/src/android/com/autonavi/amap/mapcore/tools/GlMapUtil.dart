import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_tools_GlMapUtil extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<List<int>> decodeAssetResData(android_content_Context var0, String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GlMapUtil::decodeAssetResData([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.tools.GlMapUtil::decodeAssetResData', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> dipToPixel(android_content_Context var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GlMapUtil::dipToPixel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.tools.GlMapUtil::dipToPixel', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<int> spToPixel(android_content_Context var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GlMapUtil::spToPixel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.tools.GlMapUtil::spToPixel', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getString(android_content_Context var0, int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GlMapUtil::getString([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.tools.GlMapUtil::getString', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> isAssic(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GlMapUtil::isAssic([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.tools.GlMapUtil::isAssic', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getAppVersionName(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.tools.GlMapUtil::getAppVersionName([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.tools.GlMapUtil::getAppVersionName', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}