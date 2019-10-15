import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_BitmapDescriptorFactory extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<com_amap_api_maps_model_BitmapDescriptor> fromResource(int var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::fromResource([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::fromResource', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_BitmapDescriptor> fromView(android_view_View var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::fromView([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::fromView', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_BitmapDescriptor> fromPath(String var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::fromPath([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::fromPath', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_BitmapDescriptor> fromAsset(String var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::fromAsset([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::fromAsset', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_BitmapDescriptor> fromFile(String var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::fromFile([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::fromFile', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_BitmapDescriptor> defaultMarker() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::defaultMarker([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::defaultMarker', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_BitmapDescriptor> fromBitmap(android_graphics_Bitmap var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::fromBitmap([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::fromBitmap', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  static Future<android_content_Context> getContext() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BitmapDescriptorFactory::getContext([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BitmapDescriptorFactory::getContext', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return android_content_Context()..refId = result;
    }
  }
  
}