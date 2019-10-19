import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_MsgProcessor extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> nativeInitMsg() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MsgProcessor@$refId::nativeInitMsg([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MsgProcessor::nativeInitMsg', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> nativeInit(int var1, String var2) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MsgProcessor@$refId::nativeInit([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MsgProcessor::nativeInit', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> nativeMsgProcessor(String var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MsgProcessor@$refId::nativeMsgProcessor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MsgProcessor::nativeMsgProcessor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> nativeCall() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.MsgProcessor@$refId::nativeCall([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.MsgProcessor::nativeCall', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}