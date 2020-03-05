import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import 'list.x.dart';

export 'package:amap_core_fluttify/amap_core_fluttify.dart';

typedef Future<void> OnTraceProcessing(List<LatLng> traceList);
typedef Future<void> OnTraceFinished(
  int id,
  List<LatLng> traceList,
  int distance,
  int waitingTime,
);
typedef Future<void> OnTraceFailed(int errorCode, String errorInfo);

final _traceListener = _TraceListener();

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class AmapService {
  AmapService._();

  /// 设置ios和android的app key
  static Future<void> init({
    @required String iosKey,
    @required String androidKey,
  }) async {
    await platform(
      android: (pool) async {
        await com_amap_api_maps_MapsInitializer.setApiKey(androidKey);
      },
      ios: (pool) async {
        await AmapCore.init(iosKey);
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
        final _location1 = await com_amap_api_maps_model_LatLng
            .create__double__double(point1.latitude, point1.longitude);
        // 点2
        final _location2 = await com_amap_api_maps_model_LatLng
            .create__double__double(point2.latitude, point2.longitude);

        // 计算结果
        final result = await com_amap_api_maps_AMapUtils.calculateLineDistance(
            _location1, _location2);

        // 释放两个点
        pool..add(_location1)..add(_location2);

        return result;
      },
      ios: (pool) async {
        // 点1
        final _location1 = await CLLocationCoordinate2D.create(
            point1.latitude, point1.longitude);
        final mapPoint1 = await MAMapPointForCoordinate(_location1);

        // 点2
        final _location2 = await CLLocationCoordinate2D.create(
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

  /// 转换其他坐标系到高德坐标系
  ///
  /// [coord]待转换坐标, [fromType]待转换坐标的坐标系
  static Future<LatLng> convertCoord(LatLng coord, CoordType fromType) async {
    return platform(
      android: (pool) async {
        final context = await android_app_Activity.get();

        // 待转换坐标
        final targetCoord = await com_amap_api_maps_model_LatLng
            .create__double__double(coord.latitude, coord.longitude);

        // 转换器
        final converter = await com_amap_api_maps_CoordinateConverter
            .create__android_content_Context(context);

        switch (fromType) {
          case CoordType.GPS:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.GPS);
            break;
          case CoordType.Google:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.GOOGLE);
            break;
          case CoordType.MapBar:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.MAPBAR);
            break;
          case CoordType.Baidu:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.BAIDU);
            break;
          case CoordType.MapABC:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.MAPABC);
            break;
          case CoordType.SosoMap:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.SOSOMAP);
            break;
          case CoordType.Aliyun:
            await converter
                .from(com_amap_api_maps_CoordinateConverter_CoordType.ALIYUN);
            break;
        }

        await converter.coord(targetCoord);

        final result = await converter.convert();

        // 释放两个点
        pool..add(targetCoord)..add(context)..add(converter)..add(result);

        return LatLng(
          await result.get_latitude(),
          await result.get_longitude(),
        );
      },
      ios: (pool) async {
        // 待转换坐标
        final targetCoord = await CLLocationCoordinate2D.create(
            coord.latitude, coord.longitude);

        AMapCoordinateType type;
        switch (fromType) {
          case CoordType.GPS:
            type = AMapCoordinateType.AMapCoordinateTypeGPS;
            break;
          case CoordType.Google:
            type = AMapCoordinateType.AMapCoordinateTypeGoogle;
            break;
          case CoordType.MapBar:
            type = AMapCoordinateType.AMapCoordinateTypeMapBar;
            break;
          case CoordType.Baidu:
            type = AMapCoordinateType.AMapCoordinateTypeBaidu;
            break;
          case CoordType.MapABC:
            type = AMapCoordinateType.AMapCoordinateTypeMapABC;
            break;
          case CoordType.SosoMap:
            type = AMapCoordinateType.AMapCoordinateTypeSoSoMap;
            break;
          case CoordType.Aliyun:
            type = AMapCoordinateType.AMapCoordinateTypeAliYun;
            break;
        }

        final result = await AMapCoordinateConvert(targetCoord, type);

        // 释放两个点相关的数据
        pool..add(targetCoord)..add(result);

        return LatLng(await result.latitude, await result.longitude);
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
        final _location1 = await com_amap_api_maps_model_LatLng
            .create__double__double(leftTop.latitude, leftTop.longitude);
        // 点2
        final _location2 =
            await com_amap_api_maps_model_LatLng.create__double__double(
                rightBottom.latitude, rightBottom.longitude);

        // 计算结果
        final result = await com_amap_api_maps_AMapUtils
            .calculateArea__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
                _location1, _location2);

        // 释放两个点
        pool..add(_location1)..add(_location2);

        return result;
      },
      ios: (pool) async {
        // 点1
        final _location1 = await CLLocationCoordinate2D.create(
            leftTop.latitude, leftTop.longitude);
        final mapPoint1 = await MAMapPointForCoordinate(_location1);

        // 点2
        final _location2 = await CLLocationCoordinate2D.create(
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

  /// 调用高德地图导航
  ///
  /// [target]目的地, [appName]当前应用名称, [dev]是否偏移(0:lat和lon是已经加密后的,不需要国测加密;1:需要国测加密)
  /// !注意: iOS端需要在Info.plist配置白名单, 可以参考example工程的配置(LSApplicationQueriesSchemes), 具体文档详见 https://lbs.amap.com/api/amap-mobile/guide/ios/ios-uri-information
  static Future<void> navigateDrive(
    LatLng target, {
    String appName = 'appname',
    int dev = 1,
  }) async {
    return platform(
      android: (_) async {
        final urlScheme =
            'androidamap://navi?sourceApplication=$appName&lat=${target.latitude}&lon=${target.longitude}&dev=$dev&style=2';
        if (await canLaunch(urlScheme)) {
          return launch(urlScheme);
        } else {
          return Future.error('无法调起高德地图');
        }
      },
      ios: (_) async {
        final urlScheme =
            'iosamap://navi?sourceApplication=$appName&lat=${target.latitude}&lon=${target.longitude}&dev=$dev&style=2';
        if (await canLaunch(urlScheme)) {
          return launch(urlScheme);
        } else {
          return Future.error('无法调起高德地图');
        }
      },
    );
  }

  static Future<void> queryProcessedTrace(
    int traceId,
    List<TraceLocation> locationList, {
    OnTraceProcessing onTraceProcessing,
    OnTraceFinished onTraceFinished,
    OnTraceFailed onTraceFailed,
  }) async {
    assert(locationList != null);
    assert(locationList.length > 1);
    return platform(
      android: (pool) async {
        // 获取上下文
        final applicationContext = await android_app_Application.get();
        // 创建轨迹对象
        final traceClient = await com_amap_api_trace_LBSTraceClient
            .create__android_content_Context(applicationContext);

        // 开始对轨迹纠偏
        await traceClient.queryProcessedTrace(
          traceId,
          await locationList.toAndroidModel(),
          com_amap_api_trace_LBSTraceClient.TYPE_AMAP,
          _traceListener
            .._onTraceProcessing = onTraceProcessing
            .._onTraceFinished = onTraceFinished
            .._onTraceFailed = onTraceFailed,
        );
      },
      ios: (pool) async {
        final traceManager = await MATraceManager.create__();

//        traceManager.queryProcessedTraceWithTypeprocessingCallbackfinishCallbackfailedCallback(locations, type, (index, points) { }, (points, distance) { }, (errorCode, errorDesc) { });
      },
    );
  }
}

class _TraceListener extends java_lang_Object
    with com_amap_api_trace_TraceListener {
  OnTraceProcessing _onTraceProcessing;
  OnTraceFinished _onTraceFinished;
  OnTraceFailed _onTraceFailed;

  @override
  Future<void> onTraceProcessing(
    int var1,
    int var2,
    List<com_amap_api_maps_model_LatLng> var3,
  ) async {
    super.onTraceProcessing(var1, var2, var3);
    if (_onTraceProcessing != null) {
      _onTraceProcessing(await var3.toDartModel());
    }
  }

  @override
  Future<void> onFinished(
    int var1,
    List<com_amap_api_maps_model_LatLng> var2,
    int var3,
    int var4,
  ) async {
    super.onFinished(var1, var2, var3, var4);
    if (_onTraceFinished != null) {
      _onTraceFinished(var1, await var2.toDartModel(), var3, var4);
    }
  }

  @override
  Future<void> onRequestFailed(int var1, String var2) async {
    super.onRequestFailed(var1, var2);
    if (_onTraceFailed != null) {
      _onTraceFailed(var1, var2);
    }
  }
}
