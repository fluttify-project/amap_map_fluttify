import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

export 'package:amap_core_fluttify/amap_core_fluttify.dart';

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class AmapService {
  static Map<String, List<String>> _assetManifest;

  /// 设置ios端的key, android端需要在manifest里面设置, 无法通过代码设置
  static Future init(String iosKey) async {
    // 加载asset相关信息, 供区分图片分辨率用, 因为native端的加载asset方法无法区分分辨率, 这是一个变通方法
    _assetManifest =
        await rootBundle.loadStructuredData<Map<String, List<String>>>(
      'AssetManifest.json',
      (String jsonData) {
        if (jsonData == null)
          return SynchronousFuture<Map<String, List<String>>>(null);

        final Map<String, dynamic> parsedJson = jsonDecode(jsonData);
        final Iterable<String> keys = parsedJson.keys;
        final Map parsedManifest = Map<String, List<String>>.fromIterables(
          keys,
          keys.map<List<String>>((key) => List<String>.from(parsedJson[key])),
        );
        return SynchronousFuture<Map<String, List<String>>>(parsedManifest);
      },
    );

    return platform(
      android: (pool) async {
        print('android端需要在Manifest里面设置');
      },
      ios: (pool) async {
        AmapCore.init(iosKey);
      },
    );
  }

  /// 计算两点间的直线距离
  ///
  /// 计算点1[point1]和点2[point2]的距离
  static Future<double> calculateDistance(LatLng point1, LatLng point2) async {
    return platform(
      android: (pool) async {
        // 点1
        final _location1 = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(
                point1.latitude, point1.longitude);
        // 点2
        final _location2 = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(
                point2.latitude, point2.longitude);

        // 计算结果
        final result = await com_amap_api_maps_AMapUtils.calculateLineDistance(
            _location1, _location2);

        // 释放两个点
        pool..add(_location1)..add(_location2);

        return result;
      },
      ios: (pool) async {
        // 点1
        final _location1 =
            await PlatformFactory_iOS.createCLLocationCoordinate2D(
                point1.latitude, point1.longitude);
        final mapPoint1 = await MAMapPointForCoordinate(_location1);

        // 点2
        final _location2 =
            await PlatformFactory_iOS.createCLLocationCoordinate2D(
                point2.latitude, point2.longitude);
        final mapPoint2 = await MAMapPointForCoordinate(_location2);

        // 计算结果
        final result = await MAMetersBetweenMapPoints(mapPoint1, mapPoint2);

        // 释放两个点相关的数据
        pool..add(_location1)..add(_location2)..add(mapPoint1)..add(mapPoint2);

        return result;
      },
    );
  }

  /// 计算面积 (iOS未完成)
  ///
  /// 计算指定左上角[leftTop]和右下角[rightBottom]的矩形的面积
  static Future<double> calculateArea(
    LatLng leftTop,
    LatLng rightBottom,
  ) async {
    return platform(
      android: (pool) async {
        // 点1
        final _location1 = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(
                leftTop.latitude, leftTop.longitude);
        // 点2
        final _location2 = await AmapMapFluttifyFactoryAndroid
            .createcom_amap_api_maps_model_LatLng__double__double(
                rightBottom.latitude, rightBottom.longitude);

        // 计算结果
        final result = await com_amap_api_maps_AMapUtils.calculateArea(
            _location1, _location2);

        // 释放两个点
        pool..add(_location1)..add(_location2);

        return result;
      },
      ios: (pool) async {
        // 点1
        final _location1 =
            await PlatformFactory_iOS.createCLLocationCoordinate2D(
                leftTop.latitude, leftTop.longitude);
        final mapPoint1 = await MAMapPointForCoordinate(_location1);

        // 点2
        final _location2 =
            await PlatformFactory_iOS.createCLLocationCoordinate2D(
                rightBottom.latitude, rightBottom.longitude);
        final mapPoint2 = await MAMapPointForCoordinate(_location2);

        // 计算结果
        final result = await MAMetersBetweenMapPoints(mapPoint1, mapPoint2);

        // 释放两个点相关的数据
        pool..add(_location1)..add(_location2)..add(mapPoint1)..add(mapPoint2);

        return result;
      },
    );
  }

  static String toResolutionAware(BuildContext context, String assetName) {
    final RegExp _extractRatioRegExp = RegExp(r'/?(\d+(\.\d*)?)x$');
    const double _naturalResolution = 1.0;

    double _parseScale(String key) {
      if (key == assetName) {
        return _naturalResolution;
      }

      final File assetPath = File(key);
      final Directory assetDir = assetPath.parent;

      final Match match = _extractRatioRegExp.firstMatch(assetDir.path);
      if (match != null && match.groupCount > 0)
        return double.parse(match.group(1));
      return _naturalResolution; // i.e. default to 1.0x
    }

    String _findNearest(SplayTreeMap<double, String> candidates, double value) {
      if (candidates.containsKey(value)) return candidates[value];
      final double lower = candidates.lastKeyBefore(value);
      final double upper = candidates.firstKeyAfter(value);
      if (lower == null) return candidates[upper];
      if (upper == null) return candidates[lower];
      if (value > (lower + upper) / 2)
        return candidates[upper];
      else
        return candidates[lower];
    }

    String _chooseVariant(
      String main,
      ImageConfiguration config,
      List<String> candidates,
    ) {
      if (config.devicePixelRatio == null ||
          candidates == null ||
          candidates.isEmpty) return main;
      final SplayTreeMap<double, String> mapping =
          SplayTreeMap<double, String>();
      for (String candidate in candidates)
        mapping[_parseScale(candidate)] = candidate;
      return _findNearest(mapping, config.devicePixelRatio);
    }

    final _devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final String chosenName = _chooseVariant(
        assetName,
        ImageConfiguration(devicePixelRatio: _devicePixelRatio),
        _assetManifest == null ? null : _assetManifest[assetName]);
    debugPrint('设备devicePixelRatio: $_devicePixelRatio, 选中的图片: $chosenName');
    return chosenName;
  }
}
