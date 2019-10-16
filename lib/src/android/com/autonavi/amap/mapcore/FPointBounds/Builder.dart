import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_FPointBounds_Builder extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_autonavi_amap_mapcore_FPointBounds> build() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.FPointBounds.Builder@$refId::build([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.FPointBounds.Builder::build', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_FPointBounds()..refId = result;
    }
  }
  
}