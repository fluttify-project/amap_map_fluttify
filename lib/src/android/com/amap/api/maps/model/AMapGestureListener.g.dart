import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_model_AMapGestureListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onDoubleTap(double var1, double var2) {
  
    debugPrint('onDoubleTap::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onSingleTap(double var1, double var2) {
  
    debugPrint('onSingleTap::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onFling(double var1, double var2) {
  
    debugPrint('onFling::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onScroll(double var1, double var2) {
  
    debugPrint('onScroll::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onLongPress(double var1, double var2) {
  
    debugPrint('onLongPress::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onDown(double var1, double var2) {
  
    debugPrint('onDown::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onUp(double var1, double var2) {
  
    debugPrint('onUp::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onMapStable() {
  
    debugPrint('onMapStable::kCallbackPool: $kCallbackPool');
  }
  
}