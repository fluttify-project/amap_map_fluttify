import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_MapView extends android_widget_FrameLayout  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_AMap> getMap({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::getMap([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::getMap', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_AMap()..refId = result;
    }
  }
  
  Future<void> onCreate(android_os_Bundle var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::onCreate([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::onCreate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onResume({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::onResume([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::onResume', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onPause({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::onPause([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::onPause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onDestroy({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::onDestroy([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::onDestroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onLowMemory({bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::onLowMemory([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::onLowMemory', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onSaveInstanceState(android_os_Bundle var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::onSaveInstanceState([])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::onSaveInstanceState', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setVisibility(int var1, {bool viewChannel = true}) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.MapView@$refId::setVisibility([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel(viewChannel ? 'me.yohom/amap_map_fluttify/com_amap_api_maps_MapView' : 'me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.MapView::setVisibility', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}