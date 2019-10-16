import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_CameraPosition extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  Future<com_amap_api_maps_model_LatLng> get_target() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.CameraPosition::get_target", {'refId': refId});
    return com_amap_api_maps_model_LatLng()..refId = result;
  }
  
  Future<double> get_zoom() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.CameraPosition::get_zoom", {'refId': refId});
    return result;
  }
  
  Future<double> get_tilt() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.CameraPosition::get_tilt", {'refId': refId});
    return result;
  }
  
  Future<double> get_bearing() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.CameraPosition::get_bearing", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isAbroad() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.CameraPosition::get_isAbroad", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  static Future<com_amap_api_maps_model_CameraPosition> fromLatLngZoom(com_amap_api_maps_model_LatLng var0, double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CameraPosition::fromLatLngZoom([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CameraPosition::fromLatLngZoom', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CameraPosition()..refId = result;
    }
  }
  
  static Future<com_amap_api_maps_model_CameraPosition_Builder> builder() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CameraPosition::builder([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CameraPosition::builder', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CameraPosition_Builder()..refId = result;
    }
  }
  
}