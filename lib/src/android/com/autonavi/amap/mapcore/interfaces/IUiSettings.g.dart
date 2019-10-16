import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_amap_mapcore_interfaces_IUiSettings on java_lang_Object {
  

  

  Future<bool> isIndoorSwitchEnabled() {}
  
  Future<void> setIndoorSwitchEnabled(bool var1) {}
  
  Future<void> setScaleControlsEnabled(bool var1) {}
  
  Future<void> setZoomControlsEnabled(bool var1) {}
  
  Future<void> setCompassEnabled(bool var1) {}
  
  Future<void> setMyLocationButtonEnabled(bool var1) {}
  
  Future<void> setScrollGesturesEnabled(bool var1) {}
  
  Future<void> setZoomGesturesEnabled(bool var1) {}
  
  Future<void> setTiltGesturesEnabled(bool var1) {}
  
  Future<void> setRotateGesturesEnabled(bool var1) {}
  
  Future<void> setAllGesturesEnabled(bool var1) {}
  
  Future<void> setLogoPosition(int var1) {}
  
  Future<void> setZoomPosition(int var1) {}
  
  Future<bool> isScaleControlsEnabled() {}
  
  Future<bool> isZoomControlsEnabled() {}
  
  Future<bool> isCompassEnabled() {}
  
  Future<bool> isMyLocationButtonEnabled() {}
  
  Future<bool> isScrollGesturesEnabled() {}
  
  Future<bool> isZoomGesturesEnabled() {}
  
  Future<bool> isTiltGesturesEnabled() {}
  
  Future<bool> isRotateGesturesEnabled() {}
  
  Future<int> getLogoPosition() {}
  
  Future<int> getZoomPosition() {}
  
  Future<void> setZoomInByScreenCenter(bool var1) {}
  
  Future<bool> isZoomInByScreenCenter() {}
  
  Future<void> setLogoBottomMargin(int var1) {}
  
  Future<void> setLogoLeftMargin(int var1) {}
  
  Future<double> getLogoMarginRate(int var1) {}
  
  Future<void> setLogoMarginRate(int var1, double var2) {}
  
  Future<void> setGestureScaleByMapCenter(bool var1) {}
  
  Future<bool> isGestureScaleByMapCenter() {}
  
  Future<void> setLogoEnable(bool var1) {}
  
  Future<void> requestRefreshLogo() {}
  
  Future<bool> isLogoEnable() {}
  
}