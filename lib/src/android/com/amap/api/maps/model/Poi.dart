import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_Poi extends java_lang_Object with android_os_Parcelable {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<String> getName() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Poi@$refId::getName([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Poi::getName', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getCoordinate() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Poi@$refId::getCoordinate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Poi::getCoordinate', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<String> getPoiId() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Poi@$refId::getPoiId([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Poi::getPoiId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}