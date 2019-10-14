import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleOverlayOptions extends NSObject  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  Future<bool> get_visibile() async {
    final result = await _channel.invokeMethod("MAParticleOverlayOptions::get_visibile", {'refId': refId});
    return result;
  }
  
  Future<bool> get_loop() async {
    final result = await _channel.invokeMethod("MAParticleOverlayOptions::get_loop", {'refId': refId});
    return result;
  }
  
  Future<int> get_maxParticles() async {
    final result = await _channel.invokeMethod("MAParticleOverlayOptions::get_maxParticles", {'refId': refId});
    return result;
  }
  
  Future<MAParticleEmissionModule> get_particleEmissionModule() async {
    final result = await _channel.invokeMethod("MAParticleOverlayOptions::get_particleEmissionModule", {'refId': refId});
    return MAParticleEmissionModule()..refId = result;
  }
  
  Future<MAParticleOverLifeModule> get_particleOverLifeModule() async {
    final result = await _channel.invokeMethod("MAParticleOverlayOptions::get_particleOverLifeModule", {'refId': refId});
    return MAParticleOverLifeModule()..refId = result;
  }
  

  // 生成setters
  Future<void> set_visibile(bool visibile) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_visibile', {'refId': refId, "visibile": visibile});
  
  
  }
  
  Future<void> set_loop(bool loop) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_loop', {'refId': refId, "loop": loop});
  
  
  }
  
  Future<void> set_maxParticles(int maxParticles) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_maxParticles', {'refId': refId, "maxParticles": maxParticles});
  
  
  }
  
  Future<void> set_particleStartColor(MAParticleColorGenerate particleStartColor) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_particleStartColor', {'refId': refId, "particleStartColor": particleStartColor.refId});
  
  
  }
  
  Future<void> set_particleStartSpeed(MAParticleVelocityGenerate particleStartSpeed) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_particleStartSpeed', {'refId': refId, "particleStartSpeed": particleStartSpeed.refId});
  
  
  }
  
  Future<void> set_particleEmissionModule(MAParticleEmissionModule particleEmissionModule) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_particleEmissionModule', {'refId': refId, "particleEmissionModule": particleEmissionModule.refId});
  
  
  }
  
  Future<void> set_particleShapeModule(MAParticleShapeModule particleShapeModule) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_particleShapeModule', {'refId': refId, "particleShapeModule": particleShapeModule.refId});
  
  
  }
  
  Future<void> set_particleOverLifeModule(MAParticleOverLifeModule particleOverLifeModule) async {
    await _channel.invokeMethod('MAParticleOverlayOptions::set_particleOverLifeModule', {'refId': refId, "particleOverLifeModule": particleOverLifeModule.refId});
  
  
  }
  

  // 生成方法们
  
}