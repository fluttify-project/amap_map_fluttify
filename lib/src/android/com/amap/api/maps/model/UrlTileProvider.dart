import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_UrlTileProvider extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_Tile> getTile(int var1, int var2, int var3) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.UrlTileProvider@$refId::getTile([\'var1\':$var1, \'var2\':$var2, \'var3\':$var3])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.UrlTileProvider::getTile', {"var1": var1, "var2": var2, "var3": var3, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_Tile()..refId = result;
    }
  }
  
  Future<int> getTileWidth() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.UrlTileProvider@$refId::getTileWidth([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.UrlTileProvider::getTileWidth', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getTileHeight() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.UrlTileProvider@$refId::getTileHeight([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.UrlTileProvider::getTileHeight', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}