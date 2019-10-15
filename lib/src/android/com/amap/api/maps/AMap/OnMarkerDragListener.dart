import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_AMap_OnMarkerDragListener on java_lang_Object {
  Future<void> onMarkerDragStart(com_amap_api_maps_model_Marker var1) {}
  
  Future<void> onMarkerDrag(com_amap_api_maps_model_Marker var1) {}
  
  Future<void> onMarkerDragEnd(com_amap_api_maps_model_Marker var1) {}
  
}