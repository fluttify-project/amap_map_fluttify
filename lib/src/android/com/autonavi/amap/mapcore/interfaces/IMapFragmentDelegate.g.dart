import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMapFragmentDelegate on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onInflate(android_app_Activity var1, com_amap_api_maps_AMapOptions var2, android_os_Bundle var3) {
  
    debugPrint('onInflate::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setContext(android_content_Context var1) {
  
    debugPrint('setContext::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOptions(com_amap_api_maps_AMapOptions var1) {
  
    debugPrint('setOptions::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onCreate(android_os_Bundle var1) {
  
    debugPrint('onCreate::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onResume() {
  
    debugPrint('onResume::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onPause() {
  
    debugPrint('onPause::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onDestroyView() {
  
    debugPrint('onDestroyView::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onDestroy() {
  
    debugPrint('onDestroy::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onLowMemory() {
  
    debugPrint('onLowMemory::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onSaveInstanceState(android_os_Bundle var1) {
  
    debugPrint('onSaveInstanceState::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isReady() {
  
    debugPrint('isReady::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setVisibility(int var1) {
  
    debugPrint('setVisibility::kCallbackPool: $kCallbackPool');
  }
  
}