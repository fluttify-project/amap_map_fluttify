import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_Inner_3dMap_locationManagerBase on java_lang_Object {
  

  

  Future<void> setLocationOption(com_autonavi_amap_mapcore_Inner_3dMap_locationOption var1) {}
  
  Future<void> setLocationListener(com_autonavi_amap_mapcore_Inner_3dMap_locationListener var1) {}
  
  Future<void> startLocation() {}
  
  Future<void> stopLocation() {}
  
  Future<void> unRegisterLocationListener(com_autonavi_amap_mapcore_Inner_3dMap_locationListener var1) {}
  
  Future<com_autonavi_amap_mapcore_Inner_3dMap_location> getLastKnownLocation() {}
  
  Future<void> destroy() {}
  
}