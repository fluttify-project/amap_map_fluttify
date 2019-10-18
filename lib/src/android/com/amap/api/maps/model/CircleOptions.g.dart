import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_CircleOptions extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_CircleOptions> center(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::center([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::center', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> radius(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::radius([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::radius', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> strokeWidth(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::strokeWidth([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::strokeWidth', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> strokeColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::strokeColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::strokeColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> fillColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::fillColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::fillColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> zIndex(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::zIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::zIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> visible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::visible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::visible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getCenter() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getCenter([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getCenter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<double> getRadius() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getRadius([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getRadius', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getStrokeWidth([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getStrokeWidth', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getStrokeColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getStrokeColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getFillColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getFillColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getFillColor', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getZIndex', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> addHoles(com_amap_api_maps_model_BaseHoleOptions var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::addHoles([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::addHoles', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_CircleOptions> setStrokeDottedLineType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::setStrokeDottedLineType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::setStrokeDottedLineType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_CircleOptions()..refId = result;
    }
  }
  
  Future<int> getStrokeDottedLineType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CircleOptions@$refId::getStrokeDottedLineType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.CircleOptions::getStrokeDottedLineType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}