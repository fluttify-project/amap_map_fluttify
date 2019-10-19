import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleConstantRotationGenerate extends NSObject with MAParticleRotationGenerate {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<MAParticleConstantRotationGenerate> initWithRotate(double rotate) async {
    // 日志打印
    print('fluttify-dart: MAParticleConstantRotationGenerate@$refId::initWithRotate([\'rotate\':$rotate])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleConstantRotationGenerate::initWithRotate', {"rotate": rotate, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(MAParticleConstantRotationGenerate()..refId = result);
      return MAParticleConstantRotationGenerate()..refId = result;
    }
  }
  
}