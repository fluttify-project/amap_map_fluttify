import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IglModel on java_lang_Object {
  

  

  Future<String> getTitle() {}
  
  Future<String> getSnippet() {}
  
  Future<String> getId() {}
  
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) {}
  
  Future<void> setRotateAngle(double var1) {}
  
  Future<double> getRotateAngle() {}
  
  Future<com_amap_api_maps_model_LatLng> getPosition() {}
  
  Future<void> setAnimation(com_amap_api_maps_model_animation_Animation var1) {}
  
  Future<bool> startAnimation() {}
  
  Future<bool> remove() {}
  
  Future<void> setVisible(bool var1) {}
  
  Future<bool> isVisible() {}
  
  Future<void> setZoomLimit(double var1) {}
  
  Future<void> destroy() {}
  
  Future<void> setGeoPoint(com_autonavi_amap_mapcore_IPoint var1) {}
  
  Future<void> showInfoWindow() {}
  
  Future<void> setTitle(String var1) {}
  
  Future<void> setSnippet(String var1) {}
  
  Future<void> setModelFixedLength(int var1) {}
  
}