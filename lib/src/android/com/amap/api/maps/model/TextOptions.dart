import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_TextOptions extends java_lang_Object with android_os_Parcelable {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_TextOptions> position(com_amap_api_maps_model_LatLng var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::position([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::position', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> text(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::text([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::text', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> visible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::visible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::visible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> zIndex(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::zIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::zIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> rotate(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::rotate([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::rotate', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> align(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::align([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::align', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> backgroundColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::backgroundColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::backgroundColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> fontColor(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::fontColor([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::fontColor', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_TextOptions> fontSize(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::fontSize([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::fontSize', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_TextOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_LatLng> getPosition() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getPosition([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getPosition', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_LatLng()..refId = result;
    }
  }
  
  Future<String> getText() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getText([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getText', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getRotate() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getRotate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getRotate', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getAlignX() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getAlignX([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getAlignX', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getAlignY() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getAlignY([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getAlignY', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getBackgroundColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getBackgroundColor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getBackgroundColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getFontColor() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getFontColor([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getFontColor', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getFontSize() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getFontSize([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getFontSize', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::getZIndex', {"refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.TextOptions@$refId::isVisible([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.TextOptions::isVisible', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}