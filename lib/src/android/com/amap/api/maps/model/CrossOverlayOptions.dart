import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_CrossOverlayOptions extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_autonavi_ae_gmap_gloverlay_GLCrossVector_AVectorCrossAttr> getAttribute() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlayOptions@$refId::getAttribute([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlayOptions::getAttribute', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_autonavi_ae_gmap_gloverlay_GLCrossVector_AVectorCrossAttr()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CrossOverlayOptions> setAttribute(com_autonavi_ae_gmap_gloverlay_GLCrossVector_AVectorCrossAttr var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlayOptions@$refId::setAttribute([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlayOptions::setAttribute', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CrossOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CrossOverlayOptions> setRes(android_graphics_Bitmap var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlayOptions@$refId::setRes([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlayOptions::setRes', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CrossOverlayOptions()..refId = result;
    }
  }
  
  Future<android_graphics_Bitmap> getRes() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlayOptions@$refId::getRes([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlayOptions::getRes', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return android_graphics_Bitmap()..refId = result;
    }
  }
  
}