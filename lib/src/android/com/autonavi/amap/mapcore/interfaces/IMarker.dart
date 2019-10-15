import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMarker on com_autonavi_amap_mapcore_interfaces_IOverlayImage {
  Future<void> setPeriod(int var1) {}
  
  Future<int> getPeriod() {}
  
  Future<void> setIcons(List<com_amap_api_maps_model_BitmapDescriptor> var1) {}
  
  Future<List<com_amap_api_maps_model_BitmapDescriptor>> getIcons() {}
  
  Future<void> set2Top() {}
  
  Future<void> setFlat(bool var1) {}
  
  Future<bool> isFlat() {}
  
  Future<void> setPerspective(bool var1) {}
  
  Future<bool> isPerspective() {}
  
  Future<void> setTitle(String var1) {}
  
  Future<String> getTitle() {}
  
  Future<void> setIcon(com_amap_api_maps_model_BitmapDescriptor var1) {}
  
  Future<void> setSnippet(String var1) {}
  
  Future<String> getSnippet() {}
  
  Future<void> setDraggable(bool var1) {}
  
  Future<bool> isDraggable() {}
  
  Future<bool> isRemoved() {}
  
  Future<void> showInfoWindow() {}
  
  Future<void> hideInfoWindow() {}
  
  Future<bool> isInfoWindowShown() {}
  
  Future<void> setGeoPoint(com_autonavi_amap_mapcore_IPoint var1) {}
  
  Future<com_autonavi_amap_mapcore_IPoint> getGeoPoint() {}
  
  Future<void> setPositionByPixels(int var1, int var2) {}
  
  Future<void> setBelowMaskLayer(bool var1) {}
  
  Future<void> setAnimation(com_amap_api_maps_model_animation_Animation var1) {}
  
  Future<bool> startAnimation() {}
  
  Future<void> setAnimationListener(com_amap_api_maps_model_animation_Animation_AnimationListener var1) {}
  
}