import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_GL3DModel extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setPosition', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAngle(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setAngle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setAngle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getAngle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::getAngle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::getAngle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::getPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::getPosition', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::getId([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::getId', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setAnimation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setAnimation', {"var1": var1.refId, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::startAnimation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::startAnimation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setModelFixedLength(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setModelFixedLength([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setModelFixedLength', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::remove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::remove', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::isVisible', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setVisible', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setRotateAngle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setRotateAngle', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::getRotateAngle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::getRotateAngle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setZoomLimit(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setZoomLimit([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setZoomLimit', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::destroy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::destroy', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setGeoPoint([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setGeoPoint', {"var1": var1.refId, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setTitle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setTitle', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::getTitle([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::getTitle', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::getSnippet([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::getSnippet', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::setSnippet([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::setSnippet', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.GL3DModel@$refId::showInfoWindow([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.GL3DModel::showInfoWindow', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}