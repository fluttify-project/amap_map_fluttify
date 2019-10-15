import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_TextureMapView extends android_widget_FrameLayout  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify/com_amap_api_maps_TextureMapView');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_AMap> getMap() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::getMap([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::getMap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_AMap()..refId = result;
    }
  }
  
  Future<void> onCreate(android_os_Bundle var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::onCreate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::onCreate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onResume() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::onResume([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::onResume', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onPause() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::onPause([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::onPause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onDestroy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::onDestroy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::onDestroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onLowMemory() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::onLowMemory([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::onLowMemory', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onSaveInstanceState(android_os_Bundle var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::onSaveInstanceState([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::onSaveInstanceState', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setVisibility(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.TextureMapView@$refId::setVisibility([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.TextureMapView::setVisibility', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}