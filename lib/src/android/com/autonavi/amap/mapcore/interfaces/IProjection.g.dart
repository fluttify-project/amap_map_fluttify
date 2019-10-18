import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IProjection on java_lang_Object {
  

  

  @mustCallSuper
  Future<com_amap_api_maps_model_LatLng> fromScreenLocation(android_graphics_Point var1) {
  
    debugPrint('fromScreenLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<android_graphics_Point> toScreenLocation(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('toScreenLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<android_graphics_PointF> toMapLocation(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('toMapLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_VisibleRegion> getVisibleRegion() {
  
    debugPrint('getVisibleRegion::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> toMapLenWithWin(int var1) {
  
    debugPrint('toMapLenWithWin::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_TileProjection> fromBoundsToTile(com_amap_api_maps_model_LatLngBounds var1, int var2, int var3) {
  
    debugPrint('fromBoundsToTile::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_LatLngBounds> getMapBounds(com_amap_api_maps_model_LatLng var1, double var2) {
  
    debugPrint('getMapBounds::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_AMapCameraInfo> getCameraInfo() {
  
    debugPrint('getCameraInfo::kCallbackPool: $kCallbackPool');
  }
  
}