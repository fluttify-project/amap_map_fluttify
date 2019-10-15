import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_message_HoverGestureMapMessage extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  Future<double> get_angleDelta() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.HoverGestureMapMessage::get_angleDelta", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_angleDelta(double angleDelta) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.HoverGestureMapMessage::set_angleDelta', {'refId': refId, "angleDelta": angleDelta});
  
  
  }
  

  // 生成方法们
  static Future<com_autonavi_amap_mapcore_message_HoverGestureMapMessage> obtain(int var0, double var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.HoverGestureMapMessage::obtain([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.HoverGestureMapMessage::obtain', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_message_HoverGestureMapMessage()..refId = result;
    }
  }
  
  static Future<void> destory() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.HoverGestureMapMessage::destory([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.HoverGestureMapMessage::destory', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getType() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.HoverGestureMapMessage@$refId::getType([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.HoverGestureMapMessage::getType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> runCameraUpdate(com_autonavi_ae_gmap_GLMapState var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.HoverGestureMapMessage@$refId::runCameraUpdate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.HoverGestureMapMessage::runCameraUpdate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}