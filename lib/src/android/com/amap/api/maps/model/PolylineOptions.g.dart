import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_PolylineOptions extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_PolylineOptions> setUseTexture(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setUseTexture([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setUseTexture', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setCustomTexture(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setCustomTexture([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setCustomTexture', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> getCustomTexture() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getCustomTexture([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getCustomTexture', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setCustomTextureList(List<com_amap_api_maps_model_BitmapDescriptor> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setCustomTextureList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setCustomTextureList', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<List<com_amap_api_maps_model_BitmapDescriptor>> getCustomTextureList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getCustomTextureList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getCustomTextureList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_BitmapDescriptor()..refId = it).toList();
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setCustomTextureIndex(List<int> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setCustomTextureIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setCustomTextureIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<List<int>> getCustomTextureIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getCustomTextureIndex([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getCustomTextureIndex', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>();
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> colorValues(List<int> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::colorValues([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::colorValues', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<List<int>> getColorValues() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getColorValues([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getColorValues', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>();
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> useGradient(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::useGradient([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::useGradient', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<bool> isUseGradient() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::isUseGradient([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::isUseGradient', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isUseTexture() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::isUseTexture([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::isUseTexture', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isGeodesic() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::isGeodesic([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::isGeodesic', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> add(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::add([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::add', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> addAll(List<com_amap_api_maps_model_LatLng> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::addAll([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::addAll', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> width(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::width([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::width', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> color(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::color([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::color', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> zIndex(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::zIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::zIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> visible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::visible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::visible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> geodesic(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::geodesic([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::geodesic', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setDottedLine(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setDottedLine([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setDottedLine', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<bool> isDottedLine() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::isDottedLine([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::isDottedLine', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setDottedLineType(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setDottedLineType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setDottedLineType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> lineCapType(com_amap_api_maps_model_PolylineOptions_LineCapType var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::lineCapType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::lineCapType', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> lineJoinType(com_amap_api_maps_model_PolylineOptions_LineJoinType var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::lineJoinType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::lineJoinType', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions_LineCapType> getLineCapType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getLineCapType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getLineCapType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions_LineCapType.values[result];
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions_LineJoinType> getLineJoinType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getLineJoinType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getLineJoinType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions_LineJoinType.values[result];
    }
  }
  
  Future<int> getDottedLineType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getDottedLineType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getDottedLineType', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getPoints([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getPoints', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_LatLng()..refId = it).toList();
    }
  }
  
  Future<double> getWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getWidth([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getColor', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getZIndex', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> transparency(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::transparency([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::transparency', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<double> getTransparency() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getTransparency([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getTransparency', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> aboveMaskLayer(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::aboveMaskLayer([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::aboveMaskLayer', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<bool> isAboveMaskLayer() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::isAboveMaskLayer([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::isAboveMaskLayer', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setPoints([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setPoints', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getShownRatio() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getShownRatio([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getShownRatio', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setShownRatio(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setShownRatio([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setShownRatio', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_PolylineOptions> setShownRange(double var1, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::setShownRange([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::setShownRange', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_PolylineOptions()..refId = result;
    }
  }
  
  Future<double> getShownRangeBegin() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getShownRangeBegin([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getShownRangeBegin', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getShownRangeEnd() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.PolylineOptions@$refId::getShownRangeEnd([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.PolylineOptions::getShownRangeEnd', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}