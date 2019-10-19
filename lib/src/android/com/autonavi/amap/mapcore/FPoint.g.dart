import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_FPoint extends android_graphics_PointF  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<com_autonavi_amap_mapcore_FPoint> obtain() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FPoint::obtain([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.FPoint::obtain', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_autonavi_amap_mapcore_FPoint()..refId = result);
      return com_autonavi_amap_mapcore_FPoint()..refId = result;
    }
  }
  
}