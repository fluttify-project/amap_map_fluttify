import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_interfaces_IGlOverlayLayer on java_lang_Object {
  

  

  Future<bool> removeOverlay(String var1) {}
  
  Future<int> getCurrentParticleNum(String var1) {}
  
  Future<com_amap_api_maps_model_LatLng> getNearestLatLng(com_amap_api_maps_model_PolylineOptions var1, com_amap_api_maps_model_LatLng var2) {}
  
  Future<bool> IsPolygonContainsPoint(com_amap_api_maps_model_PolygonOptions var1, com_amap_api_maps_model_LatLng var2) {}
  
  Future<void> processPolygonHoleOption(com_amap_api_maps_model_PolygonOptions var1) {}
  
  Future<bool> IsCircleContainPoint(com_amap_api_maps_model_CircleOptions var1, com_amap_api_maps_model_LatLng var2) {}
  
  Future<void> processCircleHoleOption(com_amap_api_maps_model_CircleOptions var1) {}
  
}