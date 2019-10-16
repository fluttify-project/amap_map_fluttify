import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_maps_model_particle_ParticleOverlayOptions extends com_amap_api_maps_model_BaseOptions with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> icon(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::icon([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::icon', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_BitmapDescriptor> getIcon() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getIcon([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getIcon', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_BitmapDescriptor()..refId = result;
    }
  }
  
  Future<int> getMaxParticles() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getMaxParticles([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getMaxParticles', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setMaxParticles(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setMaxParticles([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setMaxParticles', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<bool> isLoop() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::isLoop([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::isLoop', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setLoop(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setLoop([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setLoop', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<int> getDuration() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getDuration([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getDuration', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setDuration(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setDuration([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setDuration', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<int> getParticleLifeTime() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getParticleLifeTime([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getParticleLifeTime', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setParticleLifeTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setParticleLifeTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setParticleLifeTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleEmissionModule> getParticleEmissionModule() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getParticleEmissionModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getParticleEmissionModule', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleEmissionModule()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setParticleEmissionModule(com_amap_api_maps_model_particle_ParticleEmissionModule var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setParticleEmissionModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setParticleEmissionModule', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setParticleShapeModule(com_amap_api_maps_model_particle_ParticleShapeModule var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setParticleShapeModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setParticleShapeModule', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setParticleStartSpeed(com_amap_api_maps_model_particle_VelocityGenerate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setParticleStartSpeed([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setParticleStartSpeed', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setParticleStartColor(com_amap_api_maps_model_particle_ColorGenerate var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setParticleStartColor([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setParticleStartColor', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setParticleOverLifeModule(com_amap_api_maps_model_particle_ParticleOverLifeModule var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setParticleOverLifeModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setParticleOverLifeModule', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverLifeModule> getParticleOverLifeModule() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getParticleOverLifeModule([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getParticleOverLifeModule', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverLifeModule()..refId = result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setStartParticleSize(int var1, int var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setStartParticleSize([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setStartParticleSize', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<int> getStartParticleW() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getStartParticleW([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getStartParticleW', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<int> getstartParticleH() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getstartParticleH([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getstartParticleH', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> zIndex(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::zIndex([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::zIndex', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<double> getZIndex() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::getZIndex([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::getZIndex', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_maps_model_particle_ParticleOverlayOptions> setVisible(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::setVisible([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::setVisible', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_maps_model_particle_ParticleOverlayOptions()..refId = result;
    }
  }
  
  Future<bool> isVisibile() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.ParticleOverlayOptions@$refId::isVisibile([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.maps.model.particle.ParticleOverlayOptions::isVisibile', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}