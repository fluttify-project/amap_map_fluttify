import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_AMap_OnCameraChangeListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onCameraChange(com_amap_api_maps_model_CameraPosition var1) {
    kCallbackPool[var1.refId] = var1;
    debugPrint('onCameraChange::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onCameraChangeFinish(com_amap_api_maps_model_CameraPosition var1) {
    kCallbackPool[var1.refId] = var1;
    debugPrint('onCameraChangeFinish::kCallbackPool: $kCallbackPool');
  }
  
}