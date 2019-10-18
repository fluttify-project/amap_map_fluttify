import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin MAMultiPointOverlayRendererDelegate on NSObject {
  

  

  @mustCallSuper
  Future<void> multiPointOverlayRendererDidItemTapped(MAMultiPointOverlayRenderer renderer, MAMultiPointItem item) {
    kCallbackPool[renderer.refId] = renderer;
    kCallbackPool[item.refId] = item;
    debugPrint('multiPointOverlayRendererDidItemTapped::kCallbackPool: $kCallbackPool');
  }
  
}