import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMarkerAction on java_lang_Object {
  

  

  @mustCallSuper
  Future<double> getAlpha() {
  
    debugPrint('getAlpha::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setAlpha(double var1) {
  
    debugPrint('setAlpha::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getDisplayLevel() {
  
    debugPrint('getDisplayLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_MarkerOptions> getOptions() {
  
    debugPrint('getOptions::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isClickable() {
  
    debugPrint('isClickable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isInfoWindowAutoOverturn() {
  
    debugPrint('isInfoWindowAutoOverturn::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isInfoWindowEnable() {
  
    debugPrint('isInfoWindowEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setInfoWindowEnable(bool var1) {
  
    debugPrint('setInfoWindowEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setMarkerOptions(com_amap_api_maps_model_MarkerOptions var1) {
  
    debugPrint('setMarkerOptions::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setAutoOverturnInfoWindow(bool var1) {
  
    debugPrint('setAutoOverturnInfoWindow::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setClickable(bool var1) {
  
    debugPrint('setClickable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setDisplayLevel(int var1) {
  
    debugPrint('setDisplayLevel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setFixingPointEnable(bool var1) {
  
    debugPrint('setFixingPointEnable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setPositionNotUpdate(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('setPositionNotUpdate::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setRotateAngleNotUpdate(double var1) {
  
    debugPrint('setRotateAngleNotUpdate::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setSnippet(String var1) {
  
    debugPrint('setSnippet::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setTitle(String var1) {
  
    debugPrint('setTitle::kCallbackPool: $kCallbackPool');
  }
  
}