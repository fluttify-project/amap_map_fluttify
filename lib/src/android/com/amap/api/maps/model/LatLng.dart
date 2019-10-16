import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_LatLng extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  Future<double> get_latitude() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.LatLng::get_latitude", {'refId': refId});
    return result;
  }
  
  Future<double> get_longitude() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.LatLng::get_longitude", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_LatLng> clone() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.LatLng@$refId::clone([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.LatLng::clone', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
}