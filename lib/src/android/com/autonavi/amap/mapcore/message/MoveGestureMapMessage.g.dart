import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_message_MoveGestureMapMessage extends java_lang_Object  {
  // 生成getters
  Future<double> get_touchDeltaX() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.message.MoveGestureMapMessage::get_touchDeltaX", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_touchDeltaY() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.message.MoveGestureMapMessage::get_touchDeltaY", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_touchDeltaX(double touchDeltaX) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.MoveGestureMapMessage::set_touchDeltaX', {'refId': refId, "touchDeltaX": touchDeltaX});
  
  
  }
  
  Future<void> set_touchDeltaY(double touchDeltaY) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.MoveGestureMapMessage::set_touchDeltaY', {'refId': refId, "touchDeltaY": touchDeltaY});
  
  
  }
  

  // 生成方法们
  static Future<com_autonavi_amap_mapcore_message_MoveGestureMapMessage> obtain(int var0, double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.MoveGestureMapMessage::obtain([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.MoveGestureMapMessage::obtain', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_autonavi_amap_mapcore_message_MoveGestureMapMessage()..refId = result);
      return com_autonavi_amap_mapcore_message_MoveGestureMapMessage()..refId = result;
    }
  }
  
  static Future<void> destory() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.MoveGestureMapMessage::destory([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.MoveGestureMapMessage::destory', );
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.message.MoveGestureMapMessage@$refId::getType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.MoveGestureMapMessage::getType', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.message.MoveGestureMapMessage@$refId::runCameraUpdate([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.MoveGestureMapMessage::runCameraUpdate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}