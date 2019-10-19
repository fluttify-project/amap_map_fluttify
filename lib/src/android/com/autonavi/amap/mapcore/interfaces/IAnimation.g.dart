import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IAnimation on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> setAnimation(com_autonavi_amap_mapcore_animation_GLAnimation var1) {
  
    debugPrint('setAnimation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> startAnimation() {
  
    debugPrint('startAnimation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setAnimationListener(com_amap_api_maps_model_animation_Animation_AnimationListener var1) {
  
    debugPrint('setAnimationListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
}