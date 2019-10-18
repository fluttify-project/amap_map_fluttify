import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_trace_TraceStatusListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onTraceStatus(List<com_amap_api_trace_TraceLocation> var1, List<com_amap_api_maps_model_LatLng> var2, String var3) {
    kCallbackPool.addAll(Map.fromIterable(var1, key: (it) => it.refId, value: (it) => it));
    kCallbackPool.addAll(Map.fromIterable(var2, key: (it) => it.refId, value: (it) => it));
    debugPrint('onTraceStatus::kCallbackPool: $kCallbackPool');
  }
  
}