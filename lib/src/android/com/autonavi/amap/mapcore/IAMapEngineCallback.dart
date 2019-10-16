import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_IAMapEngineCallback on java_lang_Object {
  

  

  Future<List<int>> requireMapResource(int var1, String var2) {}
  
  Future<void> reloadMapResource(int var1, String var2, int var3) {}
  
  Future<void> requireMapData(int var1, List<int> var2) {}
  
  Future<List<int>> requireCharBitmap(int var1, int var2, int var3) {}
  
  Future<List<int>> requireCharsWidths(int var1, List<int> var2, int var3, int var4) {}
  
  Future<void> requireMapRender(int var1, int var2, int var3) {}
  
  Future<void> onMapRender(int var1, int var2) {}
  
  Future<void> OnIndoorBuildingActivity(int var1, List<int> var2) {}
  
  Future<int> generateRequestId() {}
  
  Future<int> requireMapDataAsyn(int var1, List<int> var2) {}
  
}