import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:url_launcher/url_launcher.dart';

export 'package:amap_core_fluttify/amap_core_fluttify.dart';

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class AmapService {
  AmapService._();

  /// 设置ios端的key, android端需要在manifest里面设置, 无法通过代码设置
  @Deprecated('使用AmapCore.init(iosKey)')
  static Future init(String iosKey) async {
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
        final _location1 =
            await createcom_amap_api_maps_model_LatLng__double__double(
                point1.latitude, point1.longitude);
        // 点2
        final _location2 =
            await createcom_amap_api_maps_model_LatLng__double__double(
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
        final _location1 = await createCLLocationCoordinate2D(
            point1.latitude, point1.longitude);
        final mapPoint1 = await MAMapPointForCoordinate(_location1);

        // 点2
        final _location2 = await createCLLocationCoordinate2D(
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
        final context = await getandroid_app_Activity();

        // 待转换坐标
        final targetCoord =
            await createcom_amap_api_maps_model_LatLng__double__double(
                coord.latitude, coord.longitude);

        // 转换器
        final converter =
            await createcom_amap_api_maps_CoordinateConverter__android_content_Context(
                context);

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
        final targetCoord =
            await createCLLocationCoordinate2D(coord.latitude, coord.longitude);

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
        final _location1 =
            await createcom_amap_api_maps_model_LatLng__double__double(
                leftTop.latitude, leftTop.longitude);
        // 点2
        final _location2 =
            await createcom_amap_api_maps_model_LatLng__double__double(
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
        final _location1 = await createCLLocationCoordinate2D(
            leftTop.latitude, leftTop.longitude);
        final mapPoint1 = await MAMapPointForCoordinate(_location1);

        // 点2
        final _location2 = await createCLLocationCoordinate2D(
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
  static Future navigateDrive(
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
}
