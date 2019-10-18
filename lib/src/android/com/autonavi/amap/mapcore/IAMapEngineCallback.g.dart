import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_IAMapEngineCallback on java_lang_Object {
  

  

  @mustCallSuper
  Future<List<int>> requireMapResource(int var1, String var2) {
  
    debugPrint('requireMapResource::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> reloadMapResource(int var1, String var2, int var3) {
  
    debugPrint('reloadMapResource::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> requireMapData(int var1, List<int> var2) {
  
    debugPrint('requireMapData::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<int>> requireCharBitmap(int var1, int var2, int var3) {
  
    debugPrint('requireCharBitmap::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<int>> requireCharsWidths(int var1, List<int> var2, int var3, int var4) {
  
    debugPrint('requireCharsWidths::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> requireMapRender(int var1, int var2, int var3) {
  
    debugPrint('requireMapRender::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onMapRender(int var1, int var2) {
  
    debugPrint('onMapRender::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> OnIndoorBuildingActivity(int var1, List<int> var2) {
  
    debugPrint('OnIndoorBuildingActivity::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> generateRequestId() {
  
    debugPrint('generateRequestId::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> requireMapDataAsyn(int var1, List<int> var2) {
  
    debugPrint('requireMapDataAsyn::kCallbackPool: $kCallbackPool');
  }
  
}