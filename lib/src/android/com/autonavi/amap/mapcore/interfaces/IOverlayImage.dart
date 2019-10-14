import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IOverlayImage on java_lang_Object {
  Future<bool> remove() {}
  
  Future<void> destroy(bool var1) {}
  
  Future<void> setRotateAngle(double var1) {}
  
  Future<double> getRotateAngle() {}
  
  Future<void> setZIndex(double var1) {}
  
  Future<double> getZIndex() {}
  
  Future<String> getId() {}
  
  Future<com_amap_api_maps_model_LatLng> getPosition() {}
  
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) {}
  
  Future<void> setVisible(bool var1) {}
  
  Future<bool> isVisible() {}
  
  Future<bool> equalsRemote(com_autonavi_amap_mapcore_interfaces_IOverlayImage var1) {}
  
  Future<int> hashCodeRemote() {}
  
  Future<void> setAnchor(double var1, double var2) {}
  
  Future<double> getAnchorU() {}
  
  Future<double> getAnchorV() {}
  
}