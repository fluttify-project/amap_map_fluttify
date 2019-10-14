import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_message_ScaleGestureMapMessage extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<double> get_scaleDelta() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::get_scaleDelta", {'refId': refId});
    return result;
  }
  
  Future<int> get_pivotX() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::get_pivotX", {'refId': refId});
    return result;
  }
  
  Future<int> get_pivotY() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::get_pivotY", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_scaleDelta(double scaleDelta) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::set_scaleDelta', {'refId': refId, "scaleDelta": scaleDelta});
  
  
  }
  
  Future<void> set_pivotX(int pivotX) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::set_pivotX', {'refId': refId, "pivotX": pivotX});
  
  
  }
  
  Future<void> set_pivotY(int pivotY) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::set_pivotY', {'refId': refId, "pivotY": pivotY});
  
  
  }
  

  // 生成方法们
  static Future<com_autonavi_amap_mapcore_message_ScaleGestureMapMessage> obtain(int var0, double var1, int var2, int var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::obtain([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::obtain', {"var0": var0, "var1": var1, "var2": var2, "var3": var3});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_amap_mapcore_message_ScaleGestureMapMessage()..refId = result;
    }
  }
  
  static Future<void> destory() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::destory([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::destory', );
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.message.ScaleGestureMapMessage@$refId::getType([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::getType', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.message.ScaleGestureMapMessage@$refId::runCameraUpdate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.ScaleGestureMapMessage::runCameraUpdate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}