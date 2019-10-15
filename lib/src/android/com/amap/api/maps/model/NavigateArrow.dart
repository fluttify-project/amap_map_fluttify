import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_NavigateArrow extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> remove() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::remove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::remove', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::getId([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::getId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setPoints(List<com_amap_api_maps_model_LatLng> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::setPoints([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::setPoints', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<List<com_amap_api_maps_model_LatLng>> getPoints() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::getPoints([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::getPoints', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_LatLng()..refId = it).toList();
    }
  }
  
  Future<void> setWidth(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::setWidth([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::setWidth', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::getWidth([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::getWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setTopColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::setTopColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::setTopColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getTopColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::getTopColor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::getTopColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setSideColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::setSideColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::setSideColor', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::setZIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::setZIndex', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::getZIndex', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::setVisible', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> set3DModel(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::set3DModel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::set3DModel', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> is3DModel() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.NavigateArrow@$refId::is3DModel([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.NavigateArrow::is3DModel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}