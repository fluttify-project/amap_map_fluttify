import 'dart:typed_data';

import 'package:amap_map_flutter/src/ios/ios.export.dart';
import 'package:amap_map_flutter/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAParticleEmissionModule extends NSObject  {
  static final _channel = MethodChannel('me.yohom/amap_map_flutter');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<MAParticleEmissionModule> initWithEmissionRate(int rate, int rateTime) async {
    // 日志打印
    print('fluttify-dart: MAParticleEmissionModule@$refId::initWithEmissionRate([\'rate\':$rate, \'rateTime\':$rateTime])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('MAParticleEmissionModule::initWithEmissionRateRateTime', {"rate": rate, "rateTime": rateTime, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAParticleEmissionModule()..refId = result;
    }
  }
  
}