import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IglModel on java_lang_Object {
  

  

  @mustCallSuper
  Future<String> getTitle() {
  
    debugPrint('getTitle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getSnippet() {
  
    debugPrint('getSnippet::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getId() {
  
    debugPrint('getId::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('setPosition::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setRotateAngle(double var1) {
  
    debugPrint('setRotateAngle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getRotateAngle() {
  
    debugPrint('getRotateAngle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_LatLng> getPosition() {
  
    debugPrint('getPosition::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setAnimation(com_amap_api_maps_model_animation_Animation var1) {
  
    debugPrint('setAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> startAnimation() {
  
    debugPrint('startAnimation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> remove() {
  
    debugPrint('remove::kCallbackPool: $kCallbackPool');
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
  Future<void> setZoomLimit(double var1) {
  
    debugPrint('setZoomLimit::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
    debugPrint('destroy::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setGeoPoint(com_autonavi_amap_mapcore_IPoint var1) {
  
    debugPrint('setGeoPoint::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> showInfoWindow() {
  
    debugPrint('showInfoWindow::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setTitle(String var1) {
  
    debugPrint('setTitle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setSnippet(String var1) {
  
    debugPrint('setSnippet::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setModelFixedLength(int var1) {
  
    debugPrint('setModelFixedLength::kCallbackPool: $kCallbackPool');
  }
  
}