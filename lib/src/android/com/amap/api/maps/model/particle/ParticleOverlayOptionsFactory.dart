import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_particle_ParticleOverlayOptionsFactory extends java_lang_Object  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<List<com_amap_api_maps_model_particle_ParticleOverlayOptions>> defaultOptions(int var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptionsFactory::defaultOptions([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptionsFactory::defaultOptions', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = it).toList();
    }
  }
  
}