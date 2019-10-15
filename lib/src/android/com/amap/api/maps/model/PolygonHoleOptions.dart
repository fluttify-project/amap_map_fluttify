import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_PolygonHoleOptions extends java_lang_Object with android_os_Parcelable {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_PolygonHoleOptions> addAll(List<com_amap_api_maps_model_LatLng> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolygonHoleOptions@$refId::addAll([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.PolygonHoleOptions::addAll', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolygonHoleOptions()..refId = result;
    }
  }
  
  Future<List<com_amap_api_maps_model_LatLng>> getPoints() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolygonHoleOptions@$refId::getPoints([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.PolygonHoleOptions::getPoints', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_LatLng()..refId = it).toList();
    }
  }
  
}