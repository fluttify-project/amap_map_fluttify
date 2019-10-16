import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_ae_gmap_gloverlay_GLRouteProperty extends java_lang_Object  {
  // 生成getters
  Future<com_autonavi_ae_gmap_gloverlay_GLRouteProperty_EAMapRouteTexture> get_euRouteTexture() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_euRouteTexture", {'refId': refId});
    return com_autonavi_ae_gmap_gloverlay_GLRouteProperty_EAMapRouteTexture.values[result];
  }
  
  Future<int> get_mFilledResId() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mFilledResId", {'refId': refId});
    return result;
  }
  
  Future<int> get_mSimple3DFillResId() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DFillResId", {'refId': refId});
    return result;
  }
  
  Future<int> get_mFilledColor() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mFilledColor", {'refId': refId});
    return result;
  }
  
  Future<int> get_mBgResId() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mBgResId", {'refId': refId});
    return result;
  }
  
  Future<int> get_mBgColor() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mBgColor", {'refId': refId});
    return result;
  }
  
  Future<int> get_mLineWidth() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mLineWidth", {'refId': refId});
    return result;
  }
  
  Future<int> get_mBorderLineWidth() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mBorderLineWidth", {'refId': refId});
    return result;
  }
  
  Future<double> get_mX1() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mX1", {'refId': refId});
    return result;
  }
  
  Future<double> get_mY1() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mY1", {'refId': refId});
    return result;
  }
  
  Future<double> get_mX2() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mX2", {'refId': refId});
    return result;
  }
  
  Future<double> get_mY2() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mY2", {'refId': refId});
    return result;
  }
  
  Future<double> get_mGLStart() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mGLStart", {'refId': refId});
    return result;
  }
  
  Future<double> get_mTextureLen() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mTextureLen", {'refId': refId});
    return result;
  }
  
  Future<double> get_mSimple3DX1() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DX1", {'refId': refId});
    return result;
  }
  
  Future<double> get_mSimple3DY1() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DY1", {'refId': refId});
    return result;
  }
  
  Future<double> get_mSimple3DX2() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DX2", {'refId': refId});
    return result;
  }
  
  Future<double> get_mSimple3DY2() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DY2", {'refId': refId});
    return result;
  }
  
  Future<double> get_mSimple3DGLStart() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DGLStart", {'refId': refId});
    return result;
  }
  
  Future<double> get_mSimple3DTextureLen() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mSimple3DTextureLen", {'refId': refId});
    return result;
  }
  
  Future<double> get_mCapX1() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mCapX1", {'refId': refId});
    return result;
  }
  
  Future<double> get_mCapY1() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mCapY1", {'refId': refId});
    return result;
  }
  
  Future<double> get_mCapX2() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mCapX2", {'refId': refId});
    return result;
  }
  
  Future<double> get_mCapY2() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mCapY2", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isLineExtract() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_isLineExtract", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isCanCovered() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_isCanCovered", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isUseColor() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_isUseColor", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isUseCap() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_isUseCap", {'refId': refId});
    return result;
  }
  
  Future<bool> get_mShowArrow() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mShowArrow", {'refId': refId});
    return result;
  }
  
  Future<bool> get_mbTexPreMulAlpha() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("com.autonavi.ae.gmap.gloverlay.GLRouteProperty::get_mbTexPreMulAlpha", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_euRouteTexture(com_autonavi_ae_gmap_gloverlay_GLRouteProperty_EAMapRouteTexture euRouteTexture) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_euRouteTexture', {'refId': refId, "euRouteTexture": euRouteTexture.index});
  
  
  }
  
  Future<void> set_mFilledResId(int mFilledResId) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mFilledResId', {'refId': refId, "mFilledResId": mFilledResId});
  
  
  }
  
  Future<void> set_mSimple3DFillResId(int mSimple3DFillResId) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DFillResId', {'refId': refId, "mSimple3DFillResId": mSimple3DFillResId});
  
  
  }
  
  Future<void> set_mFilledColor(int mFilledColor) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mFilledColor', {'refId': refId, "mFilledColor": mFilledColor});
  
  
  }
  
  Future<void> set_mBgResId(int mBgResId) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mBgResId', {'refId': refId, "mBgResId": mBgResId});
  
  
  }
  
  Future<void> set_mBgColor(int mBgColor) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mBgColor', {'refId': refId, "mBgColor": mBgColor});
  
  
  }
  
  Future<void> set_mLineWidth(int mLineWidth) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mLineWidth', {'refId': refId, "mLineWidth": mLineWidth});
  
  
  }
  
  Future<void> set_mBorderLineWidth(int mBorderLineWidth) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mBorderLineWidth', {'refId': refId, "mBorderLineWidth": mBorderLineWidth});
  
  
  }
  
  Future<void> set_mX1(double mX1) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mX1', {'refId': refId, "mX1": mX1});
  
  
  }
  
  Future<void> set_mY1(double mY1) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mY1', {'refId': refId, "mY1": mY1});
  
  
  }
  
  Future<void> set_mX2(double mX2) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mX2', {'refId': refId, "mX2": mX2});
  
  
  }
  
  Future<void> set_mY2(double mY2) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mY2', {'refId': refId, "mY2": mY2});
  
  
  }
  
  Future<void> set_mGLStart(double mGLStart) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mGLStart', {'refId': refId, "mGLStart": mGLStart});
  
  
  }
  
  Future<void> set_mTextureLen(double mTextureLen) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mTextureLen', {'refId': refId, "mTextureLen": mTextureLen});
  
  
  }
  
  Future<void> set_mSimple3DX1(double mSimple3DX1) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DX1', {'refId': refId, "mSimple3DX1": mSimple3DX1});
  
  
  }
  
  Future<void> set_mSimple3DY1(double mSimple3DY1) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DY1', {'refId': refId, "mSimple3DY1": mSimple3DY1});
  
  
  }
  
  Future<void> set_mSimple3DX2(double mSimple3DX2) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DX2', {'refId': refId, "mSimple3DX2": mSimple3DX2});
  
  
  }
  
  Future<void> set_mSimple3DY2(double mSimple3DY2) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DY2', {'refId': refId, "mSimple3DY2": mSimple3DY2});
  
  
  }
  
  Future<void> set_mSimple3DGLStart(double mSimple3DGLStart) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DGLStart', {'refId': refId, "mSimple3DGLStart": mSimple3DGLStart});
  
  
  }
  
  Future<void> set_mSimple3DTextureLen(double mSimple3DTextureLen) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mSimple3DTextureLen', {'refId': refId, "mSimple3DTextureLen": mSimple3DTextureLen});
  
  
  }
  
  Future<void> set_mCapX1(double mCapX1) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mCapX1', {'refId': refId, "mCapX1": mCapX1});
  
  
  }
  
  Future<void> set_mCapY1(double mCapY1) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mCapY1', {'refId': refId, "mCapY1": mCapY1});
  
  
  }
  
  Future<void> set_mCapX2(double mCapX2) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mCapX2', {'refId': refId, "mCapX2": mCapX2});
  
  
  }
  
  Future<void> set_mCapY2(double mCapY2) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mCapY2', {'refId': refId, "mCapY2": mCapY2});
  
  
  }
  
  Future<void> set_isLineExtract(bool isLineExtract) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_isLineExtract', {'refId': refId, "isLineExtract": isLineExtract});
  
  
  }
  
  Future<void> set_isCanCovered(bool isCanCovered) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_isCanCovered', {'refId': refId, "isCanCovered": isCanCovered});
  
  
  }
  
  Future<void> set_isUseColor(bool isUseColor) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_isUseColor', {'refId': refId, "isUseColor": isUseColor});
  
  
  }
  
  Future<void> set_isUseCap(bool isUseCap) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_isUseCap', {'refId': refId, "isUseCap": isUseCap});
  
  
  }
  
  Future<void> set_mShowArrow(bool mShowArrow) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mShowArrow', {'refId': refId, "mShowArrow": mShowArrow});
  
  
  }
  
  Future<void> set_mbTexPreMulAlpha(bool mbTexPreMulAlpha) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.ae.gmap.gloverlay.GLRouteProperty::set_mbTexPreMulAlpha', {'refId': refId, "mbTexPreMulAlpha": mbTexPreMulAlpha});
  
  
  }
  

  // 生成方法们
  
}