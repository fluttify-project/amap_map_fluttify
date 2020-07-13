import 'dart:io';
import 'dart:typed_data';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

import 'extensions.dart';
import 'list.x.dart';

export 'package:amap_core_fluttify/amap_core_fluttify.dart';

/// 轨迹纠偏过程回调，一条轨迹分割为多个段，按索引顺序回调其中一段 [index]片段索引 [traceList]当前片段的经纬度列表
typedef Future<void> OnTraceProcessing(int index, List<LatLng> traceList);

/// 轨迹纠偏成功回调 [traceList]纠偏后的经纬度列表 [distance]路程
typedef Future<void> OnTraceFinished(List<LatLng> traceList, int distance);

/// 轨迹纠偏失败回调
typedef Future<void> OnTraceFailed(int errorCode, String errorInfo);

final _traceListener = _TraceListener();

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class AmapService {
  AmapService._();

  static String _webKey;

  /// 设置ios和android的app key
  static Future<void> init({
    @required String iosKey,
    @required String androidKey,
    String webApiKey,
  }) async {
    _webKey = webApiKey;
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

  /// 调用高德地图骑行导航
  ///
  /// [target]目的地, [appName]当前应用名称, [dev]是否偏移(0:lat和lon是已经加密后的,不需要国测加密;1:需要国测加密)
  /// !注意: iOS端需要在Info.plist配置白名单, 可以参考example工程的配置(LSApplicationQueriesSchemes), 具体文档详见 https://lbs.amap.com/api/amap-mobile/guide/ios/ios-uri-information
  static Future<void> navigateRide(
    LatLng target, {
    String appName = 'appname',
    int dev = 1,
    RideType rideType = RideType.bike,
  }) async {
    final urlScheme =
        'amapuri://openFeature?featureName=OnRideNavi&rideType=${rideType.inString()}&sourceApplication=$appName&lat=${target.latitude}&lon=${target.longitude}&dev=$dev';
    if (await canLaunch(urlScheme)) {
      return launch(urlScheme);
    } else {
      return Future.error('无法调起高德地图');
    }
  }

  /// 轨迹纠偏
  ///
  /// 指定轨迹id[traceId]和轨迹点列表[locationList], 处理过程回调为[onTraceProcessing],
  /// 处理完成回调为[onTraceFinished], 处理失败回调为[onTraceFailed].
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

        await traceManager
            .queryProcessedTraceWith_type_processingCallback_finishCallback_failedCallback(
          await locationList.toIOSModel(),
          AMapCoordinateType.AMapCoordinateTypeAMap,
          (int index, List<MATracePoint> points) async {
            if (onTraceProcessing != null) {
              onTraceProcessing(index, await points.toDartModel());
            }
          },
          (List<MATracePoint> points, double distance) async {
            if (onTraceFinished != null) {
              onTraceFinished(await points.toDartModel(), distance.toInt());
            }
          },
          (int errorCode, String errorDesc) {
            if (onTraceFailed != null) {
              onTraceFailed(errorCode, errorDesc);
            }
          },
        );
      },
    );
  }

  /// 打开离线地图管理器
  static Future<void> openOfflineMapManager() async {
    platform(
      android: (pool) async {
        await startActivity(
            com_amap_api_maps_offlinemap_OfflineMapActivity.name__);
      },
      ios: (pool) async {
        await presentViewController("MAOfflineMapViewController");
      },
    );
  }

  /// 获取静态图片
  static Future<Uint8List> fetchStaticMapImage(
    LatLng coordinate, {
    int zoomLevel = 10,
    Size size = const Size(400, 400),
  }) async {
    assert(coordinate != null);
    final url =
        'https://restapi.amap.com/v3/staticmap?location=${coordinate.longitude},${coordinate.latitude}&zoom=$zoomLevel&key=$_webKey&size=${size.width.toInt()}*${size.height.toInt()}';

    debugPrint('拼接的url: $url');

    HttpClient httpClient = HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    return consolidateHttpClientResponseBytes(response);
  }
}

class _TraceListener extends java_lang_Object
    with com_amap_api_trace_TraceListener {
  OnTraceProcessing _onTraceProcessing;
  OnTraceFinished _onTraceFinished;
  OnTraceFailed _onTraceFailed;

  @override
  Future<void> onTraceProcessing(
    int lineID,
    int index,
    List<com_amap_api_maps_model_LatLng> segments,
  ) async {
    super.onTraceProcessing(lineID, index, segments);
    if (_onTraceProcessing != null) {
      _onTraceProcessing(index, await segments.toDartModel());
    }
  }

  @override
  Future<void> onFinished(
    int lineID,
    List<com_amap_api_maps_model_LatLng> linepoints,
    int distance,
    int waitingtime,
  ) async {
    super.onFinished(lineID, linepoints, distance, waitingtime);
    if (_onTraceFinished != null) {
      _onTraceFinished(await linepoints.toDartModel(), distance);
    }
  }

  @override
  Future<void> onRequestFailed(int lineID, String errorInfo) async {
    super.onRequestFailed(lineID, errorInfo);
    if (_onTraceFailed != null) {
      _onTraceFailed(lineID, errorInfo);
    }
  }
}
