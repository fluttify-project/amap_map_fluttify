import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_BuildingOverlayOptions extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<double> getZIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getZIndex', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setZIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setZIndex', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setVisible', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingHeightScale(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingHeightScale([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingHeightScale', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BuildingOverlayOptions()..refId = result;
    }
  }
  
  Future<int> getBuildingHeightScale() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingHeightScale([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingHeightScale', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingTopColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingTopColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingTopColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BuildingOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingSideColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingSideColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingSideColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BuildingOverlayOptions()..refId = result;
    }
  }
  
  Future<int> getBuildingSideColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingSideColor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingSideColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getBuildingTopColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingTopColor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingTopColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingHeight(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingHeight([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingHeight', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BuildingOverlayOptions()..refId = result;
    }
  }
  
  Future<int> getBuildingHeight() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingHeight([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingHeight', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<List<com_amap_api_maps_model_LatLng>> getBuildingLatlngs() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingLatlngs([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingLatlngs', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_LatLng()..refId = it).toList();
    }
  }
  
  Future<List<int>> getPoints() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getPoints([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getPoints', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingLatlngs(List<com_amap_api_maps_model_LatLng> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingLatlngs([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingLatlngs', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BuildingOverlayOptions()..refId = result;
    }
  }
  
}