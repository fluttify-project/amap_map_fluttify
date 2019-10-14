import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_WeightedLatLng extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<double> get_intensity() async {
    final result = await _channel.invokeMethod("com.amap.api.maps.model.WeightedLatLng::get_intensity", {'refId': refId});
    return result;
  }
  
  Future<com_amap_api_maps_model_LatLng> get_latLng() async {
    final result = await _channel.invokeMethod("com.amap.api.maps.model.WeightedLatLng::get_latLng", {'refId': refId});
    return com_amap_api_maps_model_LatLng()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}