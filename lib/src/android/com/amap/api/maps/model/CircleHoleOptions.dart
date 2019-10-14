import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_CircleHoleOptions extends java_lang_Object with android_os_Parcelable {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_CircleHoleOptions> center(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleHoleOptions@$refId::center([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CircleHoleOptions::center', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleHoleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleHoleOptions> radius(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleHoleOptions@$refId::radius([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CircleHoleOptions::radius', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleHoleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getCenter() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleHoleOptions@$refId::getCenter([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CircleHoleOptions::getCenter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<double> getRadius() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleHoleOptions@$refId::getRadius([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CircleHoleOptions::getRadius', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}