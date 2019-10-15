import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_animation_GLAlphaAnimation extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<double> get_mFromAlpha() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.animation.GLAlphaAnimation::get_mFromAlpha", {'refId': refId});
    return result;
  }
  
  Future<double> get_mToAlpha() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.animation.GLAlphaAnimation::get_mToAlpha", {'refId': refId});
    return result;
  }
  
  Future<double> get_mCurAlpha() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.animation.GLAlphaAnimation::get_mCurAlpha", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mFromAlpha(double mFromAlpha) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.animation.GLAlphaAnimation::set_mFromAlpha', {'refId': refId, "mFromAlpha": mFromAlpha});
  
  
  }
  
  Future<void> set_mToAlpha(double mToAlpha) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.animation.GLAlphaAnimation::set_mToAlpha', {'refId': refId, "mToAlpha": mToAlpha});
  
  
  }
  
  Future<void> set_mCurAlpha(double mCurAlpha) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.animation.GLAlphaAnimation::set_mCurAlpha', {'refId': refId, "mCurAlpha": mCurAlpha});
  
  
  }
  

  // 生成方法们
  
}