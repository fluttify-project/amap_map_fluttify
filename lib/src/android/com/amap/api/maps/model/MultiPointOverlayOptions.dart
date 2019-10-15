import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_MultiPointOverlayOptions extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_MultiPointOverlayOptions> anchor(double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlayOptions@$refId::anchor([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.MultiPointOverlayOptions::anchor', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_MultiPointOverlayOptions()..refId = result;
    }
  }
  
  Future<double> getAnchorU() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlayOptions@$refId::getAnchorU([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.MultiPointOverlayOptions::getAnchorU', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAnchorV() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlayOptions@$refId::getAnchorV([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.MultiPointOverlayOptions::getAnchorV', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_MultiPointOverlayOptions> icon(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlayOptions@$refId::icon([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.MultiPointOverlayOptions::icon', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_MultiPointOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> getIcon() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlayOptions@$refId::getIcon([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.MultiPointOverlayOptions::getIcon', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
}