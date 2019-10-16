import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAArc extends MAShape with MAAnnotation, MAOverlay {
  // 生成getters
  Future<CLLocationCoordinate2D> get_startCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAArc::get_startCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<CLLocationCoordinate2D> get_passedCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAArc::get_passedCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<CLLocationCoordinate2D> get_endCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAArc::get_endCoordinate", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<MAMapRect> get_boundingMapRect() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAArc::get_boundingMapRect", {'refId': refId});
    return MAMapRect()..refId = result;
  }
  

  // 生成setters
  Future<void> set_startCoordinate(CLLocationCoordinate2D startCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAArc::set_startCoordinate', {'refId': refId, "startCoordinate": startCoordinate.refId});
  
  
  }
  
  Future<void> set_passedCoordinate(CLLocationCoordinate2D passedCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAArc::set_passedCoordinate', {'refId': refId, "passedCoordinate": passedCoordinate.refId});
  
  
  }
  
  Future<void> set_endCoordinate(CLLocationCoordinate2D endCoordinate) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAArc::set_endCoordinate', {'refId': refId, "endCoordinate": endCoordinate.refId});
  
  
  }
  

  // 生成方法们
  static Future<MAArc> arcWithStartCoordinatePassedCoordinateendCoordinate(CLLocationCoordinate2D startCoordinate, CLLocationCoordinate2D passedCoordinate, CLLocationCoordinate2D endCoordinate) async {
    // 日志打印
    print('fluttify-dart: MAArc::arcWithStartCoordinate([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAArc::arcWithStartCoordinatePassedCoordinateendCoordinate', {"startCoordinate": startCoordinate.refId, "passedCoordinate": passedCoordinate.refId, "endCoordinate": endCoordinate.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return MAArc()..refId = result;
    }
  }
  
}