import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_Projection extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_LatLng> fromScreenLocation(android_graphics_Point var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::fromScreenLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::fromScreenLocation', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<android_graphics_Point> toScreenLocation(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::toScreenLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::toScreenLocation', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return android_graphics_Point()..refId = result;
    }
  }
  
  Future<android_graphics_PointF> toOpenGLLocation(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::toOpenGLLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::toOpenGLLocation', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return android_graphics_PointF()..refId = result;
    }
  }
  
  Future<double> toOpenGLWidth(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::toOpenGLWidth([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::toOpenGLWidth', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_VisibleRegion> getVisibleRegion() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::getVisibleRegion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::getVisibleRegion', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_VisibleRegion()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TileProjection> fromBoundsToTile(com_amap_api_maps_model_LatLngBounds var1, int var2, int var3) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::fromBoundsToTile([\'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::fromBoundsToTile', {"var1": var1.refId, "var2": var2, "var3": var3, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TileProjection()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLngBounds> getMapBounds(com_amap_api_maps_model_LatLng var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::getMapBounds([\'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::getMapBounds', {"var1": var1.refId, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLngBounds()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_AMapCameraInfo> getCameraInfo() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.Projection@$refId::getCameraInfo([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.Projection::getCameraInfo', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_AMapCameraInfo()..refId = result;
    }
  }
  
}