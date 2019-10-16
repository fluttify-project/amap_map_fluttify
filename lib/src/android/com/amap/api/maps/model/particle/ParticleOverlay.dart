import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_particle_ParticleOverlay extends com_amap_api_maps_model_BaseOverlay  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setVisible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setVisible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> destroy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::destroy([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::destroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStartParticleSize(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setStartParticleSize([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setStartParticleSize', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setMaxParticles(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setMaxParticles([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setMaxParticles', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setDuration(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setDuration([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setDuration', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setParticleLifeTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setParticleLifeTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setParticleLifeTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setParticleStartSpeed(com_amap_api_maps_model_particle_VelocityGenerate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setParticleStartSpeed([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setParticleStartSpeed', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLoop(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setLoop([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setLoop', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setParticleShapeModule(com_amap_api_maps_model_particle_ParticleShapeModule var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setParticleShapeModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setParticleShapeModule', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setParticleEmission(com_amap_api_maps_model_particle_ParticleEmissionModule var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setParticleEmission([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setParticleEmission', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getCurrentParticleNum() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::getCurrentParticleNum([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::getCurrentParticleNum', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setParticleOverLifeModule(com_amap_api_maps_model_particle_ParticleOverLifeModule var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setParticleOverLifeModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setParticleOverLifeModule', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setStartColor(com_amap_api_maps_model_particle_ColorGenerate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlay@$refId::setStartColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlay::setStartColor', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}