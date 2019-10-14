import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IInfoWindowManager on java_lang_Object {
  Future<void> setInfoWindowAnimation(com_amap_api_maps_model_animation_Animation var1, com_amap_api_maps_model_animation_Animation_AnimationListener var2) {}
  
  Future<void> setInfoWindowAppearAnimation(com_amap_api_maps_model_animation_Animation var1) {}
  
  Future<void> setInfoWindowBackColor(int var1) {}
  
  Future<void> setInfoWindowBackEnable(bool var1) {}
  
  Future<void> setInfoWindowBackScale(double var1, double var2) {}
  
  Future<void> setInfoWindowDisappearAnimation(com_amap_api_maps_model_animation_Animation var1) {}
  
  Future<void> setInfoWindowMovingAnimation(com_amap_api_maps_model_animation_Animation var1) {}
  
  Future<void> startAnimation() {}
  
}