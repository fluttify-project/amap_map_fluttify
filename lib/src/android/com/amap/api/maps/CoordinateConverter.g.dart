import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_CoordinateConverter extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_CoordinateConverter> from(com_amap_api_maps_CoordinateConverter_CoordType var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.CoordinateConverter@$refId::from([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.CoordinateConverter::from', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_CoordinateConverter()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_CoordinateConverter> coord(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.CoordinateConverter@$refId::coord([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.CoordinateConverter::coord', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_CoordinateConverter()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> convert() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.CoordinateConverter@$refId::convert([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.CoordinateConverter::convert', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  static Future<bool> isAMapDataAvailable(double var0, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.CoordinateConverter::isAMapDataAvailable([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.CoordinateConverter::isAMapDataAvailable', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}