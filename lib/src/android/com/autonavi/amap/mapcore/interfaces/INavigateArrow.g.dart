import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_INavigateArrow on com_autonavi_amap_mapcore_interfaces_IOverlay {
  

  

  @mustCallSuper
  Future<void> setTopColor(int var1) {
  
    debugPrint('setTopColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setSideColor(int var1) {
  
    debugPrint('setSideColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getTopColor() {
  
    debugPrint('getTopColor::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<int> getSideColor() {
  
    debugPrint('getSideColor::kCallbackPool: $kCallbackPool');
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
  Future<void> setWidth(double var1) {
  
    debugPrint('setWidth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<double> getWidth() {
  
    debugPrint('getWidth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> set3DModel(bool var1) {
  
    debugPrint('set3DModel::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> is3DModel() {
  
    debugPrint('is3DModel::kCallbackPool: $kCallbackPool');
  }
  
}