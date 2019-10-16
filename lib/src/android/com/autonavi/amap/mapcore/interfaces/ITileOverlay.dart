import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_ITileOverlay on java_lang_Object {
  

  

  Future<void> remove() {}
  
  Future<void> destroy(bool var1) {}
  
  Future<void> clearTileCache() {}
  
  Future<String> getId() {}
  
  Future<void> setZIndex(double var1) {}
  
  Future<double> getZIndex() {}
  
  Future<void> setVisible(bool var1) {}
  
  Future<bool> isVisible() {}
  
  Future<bool> equalsRemote(com_autonavi_amap_mapcore_interfaces_ITileOverlay var1) {}
  
  Future<int> hashCodeRemote() {}
  
}