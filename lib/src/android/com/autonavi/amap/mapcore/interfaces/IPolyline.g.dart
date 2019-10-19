import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IPolyline on com_autonavi_amap_mapcore_interfaces_IOverlay {
  

  

  @mustCallSuper
  Future<void> setWidth(double var1) {
  
    debugPrint('setWidth::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getWidth() {
  
    debugPrint('getWidth::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setColor(int var1) {
  
    debugPrint('setColor::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<int> getColor() {
  
    debugPrint('getColor::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setPoints(List<com_amap_api_maps_model_LatLng> var1) {
  
    debugPrint('setPoints::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_maps_model_LatLng>> getPoints() {
  
    debugPrint('getPoints::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isGeodesic() {
  
    debugPrint('isGeodesic::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setGeodesic(bool var1) {
  
    debugPrint('setGeodesic::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setDottedLine(bool var1) {
  
    debugPrint('setDottedLine::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isDottedLine() {
  
    debugPrint('isDottedLine::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_LatLng> getNearestLatLng(com_amap_api_maps_model_LatLng var1) {
  
    debugPrint('getNearestLatLng::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setTransparency(double var1) {
  
    debugPrint('setTransparency::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomTexture(com_amap_api_maps_model_BitmapDescriptor var1) {
  
    debugPrint('setCustomTexture::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOptions(com_amap_api_maps_model_PolylineOptions var1) {
  
    debugPrint('setOptions::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_maps_model_PolylineOptions> getOptions() {
  
    debugPrint('getOptions::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustemTextureIndex(List<int> var1) {
  
    debugPrint('setCustemTextureIndex::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setShownRatio(double var1) {
  
    debugPrint('setShownRatio::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setShowRange(double var1, double var2) {
  
    debugPrint('setShowRange::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getShownRatio() {
  
    debugPrint('getShownRatio::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setCustomTextureList(List<com_amap_api_maps_model_BitmapDescriptor> var1) {
  
    debugPrint('setCustomTextureList::kNativeObjectPool: $kNativeObjectPool');
  }
  
}