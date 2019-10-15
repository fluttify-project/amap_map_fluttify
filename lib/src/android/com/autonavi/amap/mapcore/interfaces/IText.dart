import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IText on com_autonavi_amap_mapcore_interfaces_IOverlayImage {
  Future<void> setText(String var1) {}
  
  Future<String> getText() {}
  
  Future<void> setBackgroundColor(int var1) {}
  
  Future<int> getBackgroundColor() {}
  
  Future<void> setFontColor(int var1) {}
  
  Future<int> getFontColor() {}
  
  Future<void> setFontSize(int var1) {}
  
  Future<int> getFontSize() {}
  
  Future<void> setAlign(int var1, int var2) {}
  
  Future<int> getAlignX() {}
  
  Future<int> getAlignY() {}
  
}