import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IPolyline on com_autonavi_amap_mapcore_interfaces_IOverlay {
  

  

  @mustCallSuper
  Future<void> setWidth(double var1) {
  
    debugPrint('setWidth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getWidth() {
  
    debugPrint('getWidth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setColor(int var1) {
  
    debugPrint('setColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getColor() {
  
    debugPrint('getColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setPoints(List<com_amap_api_maps_model_LatLng> var1) {
  
    debugPrint('setPoints::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_LatLng>> getPoints() {
  
    debugPrint('getPoints::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isGeodesic() {
  
    debugPrint('isGeodesic::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setGeodesic(bool var1) {
  
    debugPrint('setGeodesic::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setDottedLine(bool var1) {
  
    debugPrint('setDottedLine::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isDottedLine() {
  
    debugPrint('isDottedLine::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_LatLng> getNearestLatLng(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('getNearestLatLng::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setTransparency(double var1) {
  
    debugPrint('setTransparency::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomTexture(com_amap_api_maps_model_BitmapDescriptor var1) {
  
    debugPrint('setCustomTexture::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setOptions(com_amap_api_maps_model_PolylineOptions var1) {
  
    debugPrint('setOptions::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_PolylineOptions> getOptions() {
  
    debugPrint('getOptions::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustemTextureIndex(List<int> var1) {
  
    debugPrint('setCustemTextureIndex::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setShownRatio(double var1) {
  
    debugPrint('setShownRatio::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setShowRange(double var1, double var2) {
  
    debugPrint('setShowRange::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getShownRatio() {
  
    debugPrint('getShownRatio::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setCustomTextureList(List<com_amap_api_maps_model_BitmapDescriptor> var1) {
  
    debugPrint('setCustomTextureList::kCallbackPool: $kCallbackPool');
  }
  
}