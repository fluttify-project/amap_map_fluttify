import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IOverlay on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> remove() {
  
    debugPrint('remove::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getId() {
  
    debugPrint('getId::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setZIndex(double var1) {
  
    debugPrint('setZIndex::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getZIndex() {
  
    debugPrint('getZIndex::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setVisible(bool var1) {
  
    debugPrint('setVisible::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isVisible() {
  
    debugPrint('isVisible::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> equalsRemote(com_autonavi_amap_mapcore_interfaces_IOverlay var1) {
  
    debugPrint('equalsRemote::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> hashCodeRemote() {
  
    debugPrint('hashCodeRemote::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
    debugPrint('destroy::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isAboveMaskLayer() {
  
    debugPrint('isAboveMaskLayer::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setAboveMaskLayer(bool var1) {
  
    debugPrint('setAboveMaskLayer::kCallbackPool: $kCallbackPool');
  }
  
}