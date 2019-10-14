import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMapFragmentDelegate on java_lang_Object {
  Future<void> onInflate(android_app_Activity var1, com_amap_api_maps_AMapOptions var2, android_os_Bundle var3) {}
  
  Future<void> setContext(android_content_Context var1) {}
  
  Future<void> setOptions(com_amap_api_maps_AMapOptions var1) {}
  
  Future<void> onCreate(android_os_Bundle var1) {}
  
  Future<void> onResume() {}
  
  Future<void> onPause() {}
  
  Future<void> onDestroyView() {}
  
  Future<void> onDestroy() {}
  
  Future<void> onLowMemory() {}
  
  Future<void> onSaveInstanceState(android_os_Bundle var1) {}
  
  Future<bool> isReady() {}
  
  Future<void> setVisibility(int var1) {}
  
}