import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IInfoWindowManager on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> setInfoWindowAnimation(com_amap_api_maps_model_animation_Animation var1, com_amap_api_maps_model_animation_Animation_AnimationListener var2) {
  
    debugPrint('setInfoWindowAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowAppearAnimation(com_amap_api_maps_model_animation_Animation var1) {
  
    debugPrint('setInfoWindowAppearAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowBackColor(int var1) {
  
    debugPrint('setInfoWindowBackColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowBackEnable(bool var1) {
  
    debugPrint('setInfoWindowBackEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowBackScale(double var1, double var2) {
  
    debugPrint('setInfoWindowBackScale::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowDisappearAnimation(com_amap_api_maps_model_animation_Animation var1) {
  
    debugPrint('setInfoWindowDisappearAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowMovingAnimation(com_amap_api_maps_model_animation_Animation var1) {
  
    debugPrint('setInfoWindowMovingAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> startAnimation() {
  
    debugPrint('startAnimation::kCallbackPool: $kCallbackPool');
  }
  
}