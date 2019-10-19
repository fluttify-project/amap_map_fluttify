import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_InfoWindowParams extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setInfoWindowUpdateTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::setInfoWindowUpdateTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::setInfoWindowUpdateTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getInfoWindowUpdateTime() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::getInfoWindowUpdateTime([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::getInfoWindowUpdateTime', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setInfoWindowType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::setInfoWindowType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::setInfoWindowType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getInfoWindowType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::getInfoWindowType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::getInfoWindowType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<android_view_View> getInfoWindow() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::getInfoWindow([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::getInfoWindow', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(android_view_View()..refId = result);
      return android_view_View()..refId = result;
    }
  }
  
  Future<void> setInfoContent(android_view_View var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::setInfoContent([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::setInfoContent', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setInfoWindow(android_view_View var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::setInfoWindow([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::setInfoWindow', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<android_view_View> getInfoContents() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.InfoWindowParams@$refId::getInfoContents([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.InfoWindowParams::getInfoContents', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(android_view_View()..refId = result);
      return android_view_View()..refId = result;
    }
  }
  
}