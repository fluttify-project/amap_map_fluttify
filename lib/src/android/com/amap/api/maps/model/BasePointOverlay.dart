import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_BasePointOverlay extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_LatLng> getPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::getPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::getPosition', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<String> getId() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::getId([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::getId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setPosition', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setTitle(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setTitle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setTitle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getTitle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::getTitle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::getTitle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getSnippet() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::getSnippet([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::getSnippet', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setSnippet(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setSnippet([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setSnippet', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setVisible', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRotateAngle(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setRotateAngle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setRotateAngle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getRotateAngle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::getRotateAngle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::getRotateAngle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAnimation(com_amap_api_maps_model_animation_Animation var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setAnimation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setAnimation', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setGeoPoint(com_autonavi_amap_mapcore_IPoint var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::setGeoPoint([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::setGeoPoint', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> destroy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::destroy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::destroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> remove() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::remove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::remove', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> startAnimation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::startAnimation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::startAnimation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> showInfoWindow() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BasePointOverlay@$refId::showInfoWindow([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BasePointOverlay::showInfoWindow', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}