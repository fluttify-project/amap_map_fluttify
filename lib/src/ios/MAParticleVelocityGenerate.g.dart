import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin MAParticleVelocityGenerate on NSObject {
  

  

  @mustCallSuper
  Future<double> getX() {
  
    debugPrint('getX::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getY() {
  
    debugPrint('getY::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<double> getZ() {
  
    debugPrint('getZ::kNativeObjectPool: $kNativeObjectPool');
  }
  
}