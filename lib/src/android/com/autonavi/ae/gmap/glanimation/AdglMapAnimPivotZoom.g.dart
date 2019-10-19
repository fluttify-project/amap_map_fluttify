import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_glanimation_AdglMapAnimPivotZoom extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> reset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimPivotZoom@$refId::reset([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimPivotZoom::reset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setToMapZoomAndPivot(double var1, int var2, android_graphics_Point var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.glanimation.AdglMapAnimPivotZoom@$refId::setToMapZoomAndPivot([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.glanimation.AdglMapAnimPivotZoom::setToMapZoomAndPivot', {"var1": var1, "var2": var2, "var3": var3.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}