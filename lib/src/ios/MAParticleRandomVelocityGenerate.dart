import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleRandomVelocityGenerate extends NSObject with MAParticleVelocityGenerate {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<MAParticleRandomVelocityGenerate> initWithBoundaryValueX1(double x1, double y1, double z1, double x2, double y2, double z2) async {
    // 日志打印
    print('fluttify-dart: MAParticleRandomVelocityGenerate@$refId::initWithBoundaryValueX1([\'x1\':$x1, \'y1\':$y1, \'z1\':$z1, \'x2\':$x2, \'y2\':$y2, \'z2\':$z2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleRandomVelocityGenerate::initWithBoundaryValueX1Y1Z1X2Y2Z2', {"x1": x1, "y1": y1, "z1": z1, "x2": x2, "y2": y2, "z2": z2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAParticleRandomVelocityGenerate()..refId = result;
    }
  }
  
}