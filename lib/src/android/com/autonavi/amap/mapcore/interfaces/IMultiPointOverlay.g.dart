import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMultiPointOverlay on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> addItems(List<com_amap_api_maps_model_MultiPointItem> var1) {
  
    debugPrint('addItems::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addItem(com_amap_api_maps_model_MultiPointItem var1) {
  
    debugPrint('addItem::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> destroy(bool var1) {
  
    debugPrint('destroy::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setVisible(bool var1) {
  
    debugPrint('setVisible::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> draw(com_autonavi_amap_mapcore_MapConfig var1, List<double> var2, List<double> var3) {
  
    debugPrint('draw::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MultiPointItem> onClick(com_autonavi_amap_mapcore_IPoint var1) {
  
    debugPrint('onClick::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setAnchor(double var1, double var2) {
  
    debugPrint('setAnchor::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<String> getId() {
  
    debugPrint('getId::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> remove(bool var1) {
  
    debugPrint('remove::kNativeObjectPool: $kNativeObjectPool');
  }
  
}