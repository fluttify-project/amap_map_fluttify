import 'dart:typed_data';

import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/services.dart';

import 'enums.dart';

extension com_amap_api_maps_model_UrlTileProvider_X
    on com_amap_api_maps_model_UrlTileProvider {
  static Future<com_amap_api_maps_model_UrlTileProvider> create(
    int width,
    int height,
    String urlTemplate,
  ) async {
    final result =
        await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod(
      'com.amap.api.maps.model.UrlTileProviderX::create',
      {
        'width': width,
        'height': height,
        'urlTemplate': urlTemplate,
      },
    );
    return com_amap_api_maps_model_UrlTileProvider()
      ..refId = result
      ..tag__ = 'amap_map_fluttify';
  }
}

extension RideTypeX on RideType {
  String inString() {
    switch (this) {
      case RideType.elebike:
        return 'elebike';
      case RideType.bike:
        return 'bike';
      default:
        return 'bike';
    }
  }
}

extension MAPointAnnotationX on MAPointAnnotation {
  Future<void> setIcon(UIImage icon) async {
    await addProperty__(1, icon);
  }

  Future<void> setDraggable(bool draggable) async {
    await addJsonableProperty__(2, draggable);
  }

  Future<void> setRotateAngle(double rotateAngle) async {
    await addJsonableProperty__(3, rotateAngle);
  }

  Future<void> setInfoWindowEnabled(bool enable) async {
    await addJsonableProperty__(4, enable);
  }

  Future<void> setAnchor(double anchorU, double anchorV) async {
    await addJsonableProperty__(5, anchorU);
    await addJsonableProperty__(6, anchorV);
  }

  Future<void> setObject(String object) async {
    await addJsonableProperty__(7, object);
  }

  Future<void> setVisible(bool visible) async {
    await addJsonableProperty__(10, visible);
  }

  Future<void> setIcons(List<UIImage> icons) async {
    await addListProperty__(11, icons);
  }

  Future<void> setFps(int fps) async {
    await addJsonableProperty__(12, fps);
  }
}

extension MAPointAnnotationListX on List<MAPointAnnotation> {
  Future<void> setIcon(List<UIImage> icon) async {
    await addProperty_batch(1, icon);
  }

  Future<void> setDraggable(List<bool> draggable) async {
    await addJsonableProperty_batch(2, draggable);
  }

  Future<void> setRotateAngle(List<double> rotateAngle) async {
    await addJsonableProperty_batch(3, rotateAngle);
  }

  Future<void> setInfoWindowEnabled(List<bool> enable) async {
    await addJsonableProperty_batch(4, enable);
  }

  Future<void> setAnchor(List<double> anchorU, List<double> anchorV) async {
    await addJsonableProperty_batch(5, anchorU);
    await addJsonableProperty_batch(6, anchorV);
  }

  Future<void> setObject(List<String> object) async {
    await addJsonableProperty_batch(7, object);
  }

  Future<void> setVisible(List<bool> visible) async {
    await addJsonableProperty_batch(10, visible);
  }

  Future<void> setFps(List<int> fps) async {
    await addJsonableProperty_batch(12, fps);
  }
}
