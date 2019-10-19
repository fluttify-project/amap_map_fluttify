import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IGroundOverlay on com_autonavi_amap_mapcore_interfaces_IOverlay {
  

  

  @mustCallSuper
  Future<void> setPosition(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('setPosition::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_LatLng> getPosition() {
  
    debugPrint('getPosition::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setDimensions(double var1) {
  
    debugPrint('setDimensions::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getWidth() {
  
    debugPrint('getWidth::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getHeight() {
  
    debugPrint('getHeight::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setPositionFromBounds(com_amap_api_maps_model_LatLngBounds var1) {
  
    debugPrint('setPositionFromBounds::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_LatLngBounds> getBounds() {
  
    debugPrint('getBounds::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setBearing(double var1) {
  
    debugPrint('setBearing::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getBearing() {
  
    debugPrint('getBearing::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setTransparency(double var1) {
  
    debugPrint('setTransparency::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getTransparency() {
  
    debugPrint('getTransparency::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setImage(com_amap_api_maps_model_BitmapDescriptor var1) {
  
    debugPrint('setImage::kNativeObjectPool: $kNativeObjectPool');
  }
  
}