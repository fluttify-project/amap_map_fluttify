import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_MultiPointOverlay extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setItems(List<com_amap_api_maps_model_MultiPointItem> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlay@$refId::setItems([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MultiPointOverlay::setItems', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAnchor(double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlay@$refId::setAnchor([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MultiPointOverlay::setAnchor', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlay@$refId::setEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MultiPointOverlay::setEnable', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlay@$refId::remove([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MultiPointOverlay::remove', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.MultiPointOverlay@$refId::destroy([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.MultiPointOverlay::destroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}