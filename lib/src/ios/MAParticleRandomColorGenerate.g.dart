import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleRandomColorGenerate extends NSObject with MAParticleColorGenerate {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<MAParticleRandomColorGenerate> initWithBoundaryColorR1G1B1A1R2G2B2A2(double r1, double g1, double b1, double a1, double r2, double g2, double b2, double a2) async {
    // 日志打印
    print('fluttify-dart: MAParticleRandomColorGenerate@$refId::initWithBoundaryColorR1([\'r1\':$r1, \'g1\':$g1, \'b1\':$b1, \'a1\':$a1, \'r2\':$r2, \'g2\':$g2, \'b2\':$b2, \'a2\':$a2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleRandomColorGenerate::initWithBoundaryColorR1G1B1A1R2G2B2A2', {"r1": r1, "g1": g1, "b1": b1, "a1": a1, "r2": r2, "g2": g2, "b2": b2, "a2": a2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAParticleRandomColorGenerate()..refId = result;
    }
  }
  
}