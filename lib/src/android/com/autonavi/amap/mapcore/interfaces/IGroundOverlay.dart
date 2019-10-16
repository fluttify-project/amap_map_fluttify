import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IGroundOverlay on com_autonavi_amap_mapcore_interfaces_IOverlay {
  

  

  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) {}
  
  Future<com_amap_api_maps_model_LatLng> getPosition() {}
  
  Future<void> setDimensions(double var1) {}
  
  Future<double> getWidth() {}
  
  Future<double> getHeight() {}
  
  Future<void> setPositionFromBounds(com_amap_api_maps_model_LatLngBounds var1) {}
  
  Future<com_amap_api_maps_model_LatLngBounds> getBounds() {}
  
  Future<void> setBearing(double var1) {}
  
  Future<double> getBearing() {}
  
  Future<void> setTransparency(double var1) {}
  
  Future<double> getTransparency() {}
  
  Future<void> setImage(com_amap_api_maps_model_BitmapDescriptor var1) {}
  
}