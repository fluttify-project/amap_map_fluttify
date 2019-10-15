import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_CrossOverlay extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<int> setData(List<int> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlay@$refId::setData([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlay::setData', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setAttribute(com_autonavi_ae_gmap_gloverlay_GLCrossVector_AVectorCrossAttr var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlay@$refId::setAttribute([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlay::setAttribute', {"var1": var1.refId, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlay@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlay::setVisible', {"var1": var1, "refId": refId});
  
  
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
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlay@$refId::remove([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlay::remove', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setImageMode(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlay@$refId::setImageMode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlay::setImageMode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setGenerateCrossImageListener(com_amap_api_maps_model_CrossOverlay_GenerateCrossImageListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.CrossOverlay@$refId::setGenerateCrossImageListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.CrossOverlay::setGenerateCrossImageListener', {"refId": refId});
  
  
    // 接受原生回调
    MethodChannel('com.amap.api.maps.model.CrossOverlay::setGenerateCrossImageListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.model.CrossOverlay.GenerateCrossImageListener::onGenerateComplete':
              // 日志打印
              print('fluttify-dart-callback: onGenerateComplete([\'var2\':$args[var2]])');
        
                // 调用回调方法
              var1?.onGenerateComplete(android_graphics_Bitmap()..refId = (args['var1']), args['var2']);
              break;
            default:
              break;
          }
        });
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}