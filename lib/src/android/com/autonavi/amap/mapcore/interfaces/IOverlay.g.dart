import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IOverlay on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> remove() {
  
    debugPrint('remove::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<String> getId() {
  
    debugPrint('getId::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setZIndex(double var1) {
  
    debugPrint('setZIndex::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getZIndex() {
  
    debugPrint('getZIndex::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setVisible(bool var1) {
  
    debugPrint('setVisible::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isVisible() {
  
    debugPrint('isVisible::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> equalsRemote(com_autonavi_amap_mapcore_interfaces_IOverlay var1) {
  
    debugPrint('equalsRemote::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> hashCodeRemote() {
  
    debugPrint('hashCodeRemote::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
    debugPrint('destroy::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isAboveMaskLayer() {
  
    debugPrint('isAboveMaskLayer::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setAboveMaskLayer(bool var1) {
  
    debugPrint('setAboveMaskLayer::kNativeObjectPool: $kNativeObjectPool');
  }
  
}