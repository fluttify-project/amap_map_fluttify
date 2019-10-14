import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IPolygon on com_autonavi_amap_mapcore_interfaces_IOverlay {
  Future<void> setStrokeWidth(double var1) {}
  
  Future<double> getStrokeWidth() {}
  
  Future<void> setFillColor(int var1) {}
  
  Future<int> getFillColor() {}
  
  Future<void> setStrokeColor(int var1) {}
  
  Future<void> setPoints(List<com_amap_api_maps_model_LatLng> var1) {}
  
  Future<List<com_amap_api_maps_model_LatLng>> getPoints() {}
  
  Future<int> getStrokeColor() {}
  
  Future<bool> contains(com_amap_api_maps_model_LatLng var1) {}
  
  Future<void> setHoleOptions(List<com_amap_api_maps_model_BaseHoleOptions> var1) {}
  
  Future<List<com_amap_api_maps_model_BaseHoleOptions>> getHoleOptions() {}
  
}