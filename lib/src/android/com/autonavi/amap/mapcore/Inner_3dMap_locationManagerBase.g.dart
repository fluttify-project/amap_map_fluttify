import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_Inner_3dMap_locationManagerBase on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> setLocationOption(com_autonavi_amap_mapcore_Inner_3dMap_locationOption var1) {
  
    debugPrint('setLocationOption::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setLocationListener(com_autonavi_amap_mapcore_Inner_3dMap_locationListener var1) {
  
    debugPrint('setLocationListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> startLocation() {
  
    debugPrint('startLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> stopLocation() {
  
    debugPrint('stopLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> unRegisterLocationListener(com_autonavi_amap_mapcore_Inner_3dMap_locationListener var1) {
  
    debugPrint('unRegisterLocationListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_autonavi_amap_mapcore_Inner_3dMap_location> getLastKnownLocation() {
  
    debugPrint('getLastKnownLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
    debugPrint('destroy::kCallbackPool: $kCallbackPool');
  }
  
}