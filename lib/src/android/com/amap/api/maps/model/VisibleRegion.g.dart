import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_VisibleRegion extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  Future<com_amap_api_maps_model_LatLng> get_nearLeft() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.VisibleRegion::get_nearLeft", {'refId': refId});
    return com_amap_api_maps_model_LatLng()..refId = result;
  }
  
  Future<com_amap_api_maps_model_LatLng> get_nearRight() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.VisibleRegion::get_nearRight", {'refId': refId});
    return com_amap_api_maps_model_LatLng()..refId = result;
  }
  
  Future<com_amap_api_maps_model_LatLng> get_farLeft() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.VisibleRegion::get_farLeft", {'refId': refId});
    return com_amap_api_maps_model_LatLng()..refId = result;
  }
  
  Future<com_amap_api_maps_model_LatLng> get_farRight() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.VisibleRegion::get_farRight", {'refId': refId});
    return com_amap_api_maps_model_LatLng()..refId = result;
  }
  
  Future<com_amap_api_maps_model_LatLngBounds> get_latLngBounds() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.amap.api.maps.model.VisibleRegion::get_latLngBounds", {'refId': refId});
    return com_amap_api_maps_model_LatLngBounds()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}