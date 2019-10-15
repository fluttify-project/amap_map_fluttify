import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_MapProjection extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<void> lonlat2Geo(double var0, double var2, com_autonavi_amap_mapcore_IPoint var4) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MapProjection::lonlat2Geo([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.MapProjection::lonlat2Geo', {"var0": var0, "var2": var2, "var4": var4.refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.MapProjection::geo2LonLat([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.MapProjection::geo2LonLat', {"var0": var0, "var1": var1, "var2": var2.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}