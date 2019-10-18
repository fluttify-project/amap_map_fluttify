import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IText on com_autonavi_amap_mapcore_interfaces_IOverlayImage {
  

  

  @mustCallSuper
  Future<void> setText(String var1) {
  
    debugPrint('setText::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getText() {
  
    debugPrint('getText::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setBackgroundColor(int var1) {
  
    debugPrint('setBackgroundColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getBackgroundColor() {
  
    debugPrint('getBackgroundColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setFontColor(int var1) {
  
    debugPrint('setFontColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getFontColor() {
  
    debugPrint('getFontColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setFontSize(int var1) {
  
    debugPrint('setFontSize::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getFontSize() {
  
    debugPrint('getFontSize::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setAlign(int var1, int var2) {
  
    debugPrint('setAlign::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getAlignX() {
  
    debugPrint('getAlignX::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getAlignY() {
  
    debugPrint('getAlignY::kCallbackPool: $kCallbackPool');
  }
  
}