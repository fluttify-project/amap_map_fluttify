import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_AMapCameraInfo extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<double> getFov() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getFov([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getFov', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAspectRatio() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getAspectRatio([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getAspectRatio', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getRotate() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getRotate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getRotate', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getX() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getX([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getX', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getY() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getY([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getY', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getZ() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getZ([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getZ', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}