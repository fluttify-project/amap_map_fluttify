import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_BitmapDescriptor extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<String> getId() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptor@$refId::getId([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.BitmapDescriptor::getId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> clone() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptor@$refId::clone([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.BitmapDescriptor::clone', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_maps_model_BitmapDescriptor()..refId = result);
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  Future<android_graphics_Bitmap> getBitmap() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptor@$refId::getBitmap([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.BitmapDescriptor::getBitmap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(android_graphics_Bitmap()..refId = result);
      return android_graphics_Bitmap()..refId = result;
    }
  }
  
  Future<int> getWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptor@$refId::getWidth([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.BitmapDescriptor::getWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getHeight() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptor@$refId::getHeight([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.BitmapDescriptor::getHeight', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}