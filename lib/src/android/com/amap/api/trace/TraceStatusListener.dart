import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_trace_TraceStatusListener on java_lang_Object {
  Future<void> onTraceStatus(List<com_amap_api_trace_TraceLocation> var1, List<com_amap_api_maps_model_LatLng> var2, String var3) {}
  
}