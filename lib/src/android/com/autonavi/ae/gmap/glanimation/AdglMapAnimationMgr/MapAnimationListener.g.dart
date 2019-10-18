import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_autonavi_ae_gmap_glanimation_AdglMapAnimationMgr_MapAnimationListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onMapAnimationFinish(com_amap_api_maps_AMap_CancelableCallback var1) {
    kCallbackPool.add(var1);
  }
  
}