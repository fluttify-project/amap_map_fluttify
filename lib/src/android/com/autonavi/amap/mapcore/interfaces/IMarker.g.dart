import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMarker on com_autonavi_amap_mapcore_interfaces_IOverlayImage {
  

  

  @mustCallSuper
  Future<void> setPeriod(int var1) {
  
    debugPrint('setPeriod::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getPeriod() {
  
    debugPrint('getPeriod::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setIcons(List<com_amap_api_maps_model_BitmapDescriptor> var1) {
  
    debugPrint('setIcons::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_BitmapDescriptor>> getIcons() {
  
    debugPrint('getIcons::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> set2Top() {
  
    debugPrint('set2Top::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setFlat(bool var1) {
  
    debugPrint('setFlat::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isFlat() {
  
    debugPrint('isFlat::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setPerspective(bool var1) {
  
    debugPrint('setPerspective::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isPerspective() {
  
    debugPrint('isPerspective::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setTitle(String var1) {
  
    debugPrint('setTitle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getTitle() {
  
    debugPrint('getTitle::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setIcon(com_amap_api_maps_model_BitmapDescriptor var1) {
  
    debugPrint('setIcon::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setSnippet(String var1) {
  
    debugPrint('setSnippet::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<String> getSnippet() {
  
    debugPrint('getSnippet::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setDraggable(bool var1) {
  
    debugPrint('setDraggable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isDraggable() {
  
    debugPrint('isDraggable::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isRemoved() {
  
    debugPrint('isRemoved::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> showInfoWindow() {
  
    debugPrint('showInfoWindow::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> hideInfoWindow() {
  
    debugPrint('hideInfoWindow::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isInfoWindowShown() {
  
    debugPrint('isInfoWindowShown::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setGeoPoint(com_autonavi_amap_mapcore_IPoint var1) {
  
    debugPrint('setGeoPoint::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_autonavi_amap_mapcore_IPoint> getGeoPoint() {
  
    debugPrint('getGeoPoint::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setPositionByPixels(int var1, int var2) {
  
    debugPrint('setPositionByPixels::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setBelowMaskLayer(bool var1) {
  
    debugPrint('setBelowMaskLayer::kCallbackPool: $kCallbackPool');
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
  Future<void> setAnimationListener(com_amap_api_maps_model_animation_Animation_AnimationListener var1) {
  
    debugPrint('setAnimationListener::kCallbackPool: $kCallbackPool');
  }
  
}