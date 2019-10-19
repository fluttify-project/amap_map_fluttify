import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_message_RotateGestureMapMessage extends java_lang_Object  {
  // 生成getters
  Future<int> get_pivotX() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.message.RotateGestureMapMessage::get_pivotX", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_pivotY() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.message.RotateGestureMapMessage::get_pivotY", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_angleDelta() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.amap.mapcore.message.RotateGestureMapMessage::get_angleDelta", {'refId': refId});
  
    return result;
  }
  

  // 生成setters
  Future<void> set_pivotX(int pivotX) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::set_pivotX', {'refId': refId, "pivotX": pivotX});
  
  
  }
  
  Future<void> set_pivotY(int pivotY) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::set_pivotY', {'refId': refId, "pivotY": pivotY});
  
  
  }
  
  Future<void> set_angleDelta(double angleDelta) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::set_angleDelta', {'refId': refId, "angleDelta": angleDelta});
  
  
  }
  

  // 生成方法们
  static Future<com_autonavi_amap_mapcore_message_RotateGestureMapMessage> obtain(int var0, double var1, int var2, int var3) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.RotateGestureMapMessage::obtain([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::obtain', {"var0": var0, "var1": var1, "var2": var2, "var3": var3});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_autonavi_amap_mapcore_message_RotateGestureMapMessage()..refId = result);
      return com_autonavi_amap_mapcore_message_RotateGestureMapMessage()..refId = result;
    }
  }
  
  static Future<void> destory() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.RotateGestureMapMessage::destory([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::destory', );
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.message.RotateGestureMapMessage@$refId::getType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::getType', {"refId": refId});
  
  
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
    print('fluttify-dart: com.autonavi.amap.mapcore.message.RotateGestureMapMessage@$refId::runCameraUpdate([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.message.RotateGestureMapMessage::runCameraUpdate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}