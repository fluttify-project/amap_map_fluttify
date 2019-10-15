import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_particle_ParticleOverLifeModule extends com_autonavi_amap_mapcore_AbstractNativeInstance with android_os_Parcelable {
  static final _channel = MethodChannel('me.yohom/amap_map_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> createNativeInstace() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverLifeModule@$refId::createNativeInstace([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.ParticleOverLifeModule::createNativeInstace', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setVelocityOverLife(com_amap_api_maps_model_particle_VelocityGenerate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverLifeModule@$refId::setVelocityOverLife([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.ParticleOverLifeModule::setVelocityOverLife', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setRotateOverLife(com_amap_api_maps_model_particle_RotationOverLife var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverLifeModule@$refId::setRotateOverLife([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.ParticleOverLifeModule::setRotateOverLife', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setSizeOverLife(com_amap_api_maps_model_particle_SizeOverLife var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverLifeModule@$refId::setSizeOverLife([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.ParticleOverLifeModule::setSizeOverLife', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setColorGenerate(com_amap_api_maps_model_particle_ColorGenerate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverLifeModule@$refId::setColorGenerate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.ParticleOverLifeModule::setColorGenerate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}