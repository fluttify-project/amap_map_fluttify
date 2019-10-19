import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMapFragmentDelegate on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onInflate(android_app_Activity var1, com_amap_api_maps_AMapOptions var2, android_os_Bundle var3) {
  
    debugPrint('onInflate::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setContext(android_content_Context var1) {
  
    debugPrint('setContext::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOptions(com_amap_api_maps_AMapOptions var1) {
  
    debugPrint('setOptions::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onCreate(android_os_Bundle var1) {
  
    debugPrint('onCreate::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onResume() {
  
    debugPrint('onResume::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onPause() {
  
    debugPrint('onPause::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onDestroyView() {
  
    debugPrint('onDestroyView::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onDestroy() {
  
    debugPrint('onDestroy::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onLowMemory() {
  
    debugPrint('onLowMemory::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onSaveInstanceState(android_os_Bundle var1) {
  
    debugPrint('onSaveInstanceState::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isReady() {
  
    debugPrint('isReady::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setVisibility(int var1) {
  
    debugPrint('setVisibility::kNativeObjectPool: $kNativeObjectPool');
  }
  
}