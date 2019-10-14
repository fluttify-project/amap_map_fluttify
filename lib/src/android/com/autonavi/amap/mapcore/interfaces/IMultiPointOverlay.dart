import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMultiPointOverlay on java_lang_Object {
  Future<void> addItems(List<com_amap_api_maps_model_MultiPointItem> var1) {}
  
  Future<void> addItem(com_amap_api_maps_model_MultiPointItem var1) {}
  
  Future<void> destroy(bool var1) {}
  
  Future<void> setVisible(bool var1) {}
  
  Future<void> draw(com_autonavi_amap_mapcore_MapConfig var1, List<double> var2, List<double> var3) {}
  
  Future<com_amap_api_maps_model_MultiPointItem> onClick(com_autonavi_amap_mapcore_IPoint var1) {}
  
  Future<void> setAnchor(double var1, double var2) {}
  
  Future<String> getId() {}
  
  Future<void> remove(bool var1) {}
  
}