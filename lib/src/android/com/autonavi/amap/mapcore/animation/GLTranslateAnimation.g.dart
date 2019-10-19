import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_animation_GLTranslateAnimation extends java_lang_Object  {
  // 生成getters
  Future<double> get_mFromXDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.animation.GLTranslateAnimation::get_mFromXDelta", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_mFromYDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.animation.GLTranslateAnimation::get_mFromYDelta", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_mToXDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.animation.GLTranslateAnimation::get_mToXDelta", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_mToYDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.animation.GLTranslateAnimation::get_mToYDelta", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_mCurXDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.animation.GLTranslateAnimation::get_mCurXDelta", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_mCurYDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.animation.GLTranslateAnimation::get_mCurYDelta", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_mFromXDelta(double mFromXDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::set_mFromXDelta', {'refId': refId, "mFromXDelta": mFromXDelta});
  
  
  }
  
  Future<void> set_mFromYDelta(double mFromYDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::set_mFromYDelta', {'refId': refId, "mFromYDelta": mFromYDelta});
  
  
  }
  
  Future<void> set_mToXDelta(double mToXDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::set_mToXDelta', {'refId': refId, "mToXDelta": mToXDelta});
  
  
  }
  
  Future<void> set_mToYDelta(double mToYDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::set_mToYDelta', {'refId': refId, "mToYDelta": mToYDelta});
  
  
  }
  
  Future<void> set_mCurXDelta(double mCurXDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::set_mCurXDelta', {'refId': refId, "mCurXDelta": mCurXDelta});
  
  
  }
  
  Future<void> set_mCurYDelta(double mCurYDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::set_mCurYDelta', {'refId': refId, "mCurYDelta": mCurYDelta});
  
  
  }
  

  // 生成方法们
  Future<void> setFromPoint(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLTranslateAnimation@$refId::setFromPoint([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.animation.GLTranslateAnimation::setFromPoint', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}