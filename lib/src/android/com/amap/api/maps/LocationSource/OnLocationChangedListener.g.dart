import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_maps_LocationSource_OnLocationChangedListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onLocationChanged(android_location_Location var1) {
    kCallbackPool[var1.refId] = var1;
    debugPrint('onLocationChanged::kCallbackPool: $kCallbackPool');
  }
  
}