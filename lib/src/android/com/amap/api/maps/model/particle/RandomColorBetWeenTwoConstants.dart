import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_particle_RandomColorBetWeenTwoConstants extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> createNativeInstace() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.RandomColorBetWeenTwoConstants@$refId::createNativeInstace([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.RandomColorBetWeenTwoConstants::createNativeInstace', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<List<double>> getColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.RandomColorBetWeenTwoConstants@$refId::getColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.RandomColorBetWeenTwoConstants::getColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}