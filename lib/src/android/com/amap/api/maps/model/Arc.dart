import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_Arc extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> remove() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::remove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::remove', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getId() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::getId([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::getId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStrokeWidth(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::setStrokeWidth([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::setStrokeWidth', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getStrokeWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::getStrokeWidth([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::getStrokeWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStrokeColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::setStrokeColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::setStrokeColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getStrokeColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::getStrokeColor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::getStrokeColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZIndex(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::setZIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::setZIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getZIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::getZIndex', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setVisible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::setVisible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isVisible() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.Arc@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.Arc::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}