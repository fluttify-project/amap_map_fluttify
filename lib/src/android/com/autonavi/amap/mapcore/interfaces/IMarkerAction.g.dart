import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IMarkerAction on java_lang_Object {
  

  

  Future<double> getAlpha() {}
  
  Future<void> setAlpha(double var1) {}
  
  Future<int> getDisplayLevel() {}
  
  Future<com_amap_api_maps_model_MarkerOptions> getOptions() {}
  
  Future<bool> isClickable() {}
  
  Future<bool> isInfoWindowAutoOverturn() {}
  
  Future<bool> isInfoWindowEnable() {}
  
  Future<void> setInfoWindowEnable(bool var1) {}
  
  Future<void> setMarkerOptions(com_amap_api_maps_model_MarkerOptions var1) {}
  
  Future<void> setAutoOverturnInfoWindow(bool var1) {}
  
  Future<void> setClickable(bool var1) {}
  
  Future<void> setDisplayLevel(int var1) {}
  
  Future<void> setFixingPointEnable(bool var1) {}
  
  Future<void> setPositionNotUpdate(com_amap_api_maps_model_LatLng var1) {}
  
  Future<void> setRotateAngleNotUpdate(double var1) {}
  
  Future<void> setSnippet(String var1) {}
  
  Future<void> setTitle(String var1) {}
  
}