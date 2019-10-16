import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleEmissionModule extends NSObject  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<MAParticleEmissionModule> initWithEmissionRateRateTime(int rate, int rateTime) async {
    // 日志打印
    print('fluttify-dart: MAParticleEmissionModule@$refId::initWithEmissionRate([\'rate\':$rate, \'rateTime\':$rateTime])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAParticleEmissionModule::initWithEmissionRateRateTime', {"rate": rate, "rateTime": rateTime, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAParticleEmissionModule()..refId = result;
    }
  }
  
}