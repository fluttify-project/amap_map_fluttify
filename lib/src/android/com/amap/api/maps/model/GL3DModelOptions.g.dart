import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_GL3DModelOptions extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_GL3DModelOptions> textureDrawable(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::textureDrawable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::textureDrawable', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GL3DModelOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GL3DModelOptions> vertexData(List<double> var1, List<double> var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::vertexData([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::vertexData', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GL3DModelOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GL3DModelOptions> position(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::position([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::position', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GL3DModelOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GL3DModelOptions> angle(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::angle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::angle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GL3DModelOptions()..refId = result;
    }
  }
  
  Future<List<double>> getVertext() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::getVertext([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::getVertext', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<double>();
    }
  }
  
  Future<List<double>> getTextrue() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::getTextrue([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::getTextrue', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<double>();
    }
  }
  
  Future<double> getAngle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::getAngle([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::getAngle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getLatLng() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::getLatLng([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::getLatLng', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> getBitmapDescriptor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::getBitmapDescriptor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::getBitmapDescriptor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_GL3DModelOptions> setModelFixedLength(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::setModelFixedLength([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::setModelFixedLength', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_GL3DModelOptions()..refId = result;
    }
  }
  
  Future<int> getModelFixedLength() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.GL3DModelOptions@$refId::getModelFixedLength([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.GL3DModelOptions::getModelFixedLength', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}