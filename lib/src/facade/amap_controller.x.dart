import 'dart:math';

import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/material.dart';

/// 可直接扩展的部分
extension AmapControllerX on AmapController {
  /// 设置地图朝向
  ///
  /// [bearing] 朝向角度, 单位为度(°), 范围为[0°,360°]
  Future<void> setBearing(double bearing, {bool animated = true}) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final update =
            await com_amap_api_maps_CameraUpdateFactory.changeBearing(bearing);
        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(update);
        } else {
          await map.moveCamera(update);
        }

        pool..add(map)..add(update);
      },
      ios: (pool) async {
        final currentRotation = await iosController.get_rotationDegree();
        if ((bearing - currentRotation).abs() > 180) {
          await iosController.setRotationDegree_animated_duration(
            360 - bearing,
            animated,
            0.3,
          );
        } else {
          await iosController.setRotationDegree_animated_duration(
            bearing,
            animated,
            0.3,
          );
        }
      },
    );
  }

  /// 设置地图倾斜度
  Future<void> setTilt(double tilt, {bool animated = true}) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final update =
            await com_amap_api_maps_CameraUpdateFactory.changeTilt(tilt);
        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(update);
        } else {
          await map.moveCamera(update);
        }

        pool..add(map)..add(update);
      },
      ios: (pool) async {
        await iosController.setCameraDegree_animated_duration(
          tilt,
          animated,
          0.3,
        );
      },
    );
  }

  /// 显示/隐藏3D楼块效果
  Future<void> showBuildings(bool show) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.showBuildings(show);
        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_showsBuildings(show);
      },
    );
  }

  /// 显示/隐藏地图上的文字标注
  Future<void> showMapText(bool show) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.showMapText(show);
        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_showsLabels(show);
      },
    );
  }

  /// 一次性设置地图视角
  Future<void> setCameraPosition({
    @required LatLng coordinate,
    double zoom,
    double tilt,
    double bearing,
    bool animated = true,
    Duration duration = const Duration(milliseconds: 500),
  }) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final builder = await com_amap_api_maps_model_CameraPosition.builder();
        if (coordinate != null) {
          final latLng =
              await com_amap_api_maps_model_LatLng.create__double__double(
            coordinate.latitude,
            coordinate.longitude,
          );
          await builder.target(latLng);
        }
        if (zoom != null) {
          await builder.zoom(zoom);
        }
        if (tilt != null) {
          await builder.tilt(tilt);
        }
        if (bearing != null) {
          await builder.bearing(bearing);
        }

        final update = await com_amap_api_maps_CameraUpdateFactory
            .newCameraPosition(await builder.build());
        if (animated) {
          await map
              .animateCamera__com_amap_api_maps_CameraUpdate__int__com_amap_api_maps_AMap_CancelableCallback(
            update,
            duration.inMilliseconds,
            null,
          );
        } else {
          await map.moveCamera(update);
        }

        pool..add(map)..add(update);
      },
      ios: (pool) async {
        final status = await MAMapStatus.create__();
        if (coordinate != null) {
          final latLng = await CLLocationCoordinate2D.create(
              coordinate.latitude, coordinate.longitude);
          await status.set_centerCoordinate(latLng);
        }
        if (zoom != null) {
          await status.set_zoomLevel(zoom);
        }
        if (tilt != null) {
          await status.set_cameraDegree(tilt);
        }
        if (bearing != null) {
          final currentRotation = await iosController.get_rotationDegree();
          if ((bearing - currentRotation).abs() > 180) {
            await status.set_rotationDegree(360 - bearing);
          } else {
            await status.set_cameraDegree(bearing);
          }
        }
        await iosController.setMapStatus_animated_duration(
          status,
          animated,
          duration.inMilliseconds / 1000,
        );
      },
    );
  }

  /// 根据起点[from]和终点[to]坐标, 搜索出路径并将驾车路线规划结果[driveRouteResult]添加到地图上, 可以配置交通拥堵情况[trafficOption],
  /// 路线的宽度[lineWidth], 自定纹理[customTexture].
  Future<void> addDriveRoute({
    @required LatLng from,
    @required LatLng to,
    TrafficOption trafficOption,
    double lineWidth = 10,
    ImageProvider customTexture,
  }) async {
    assert(from != null && to != null);
    // 搜索路径
    final route =
        await AmapSearch.instance.searchDriveRoute(from: from, to: to);

    // 添加路径
    for (final path in await route.drivePathList) {
      for (final step in await path.driveStepList) {
        if (trafficOption != null && trafficOption.show) {
          for (final tmc in await step.tmsList) {
            final status = await tmc.status;
            Color statusColor = Colors.green;
            switch (status) {
              case '缓行':
                statusColor = Colors.yellow;
                break;
              case '拥堵':
                statusColor = Colors.red;
                break;
              case '未知':
                statusColor = Colors.blue;
                break;
              default:
                break;
            }
            await addPolyline(PolylineOption(
              latLngList: await tmc.polyline,
              strokeColor: statusColor,
              width: lineWidth,
              textureProvider: customTexture,
            ));
          }
        } else {
          await addPolyline(PolylineOption(
            latLngList: await step.polyline,
            width: lineWidth,
            textureProvider: customTexture,
          ));
        }
      }
    }
  }

  /// 添加地区轮廓
  ///
  /// 地区名称[districtName], 轮廓宽度[width], 轮廓颜色[strokeColor], 填充颜色[fillColor]
  ///
  /// 由于一个省份可能包含多个区域, 比如浙江包含很多岛屿, 如果把岛屿也画进去, 那么会非常消耗性能.
  /// 业务上而言, 我认为这些岛屿是否画进去基本上不影响使用, 所以增加了[onlyMainDistrict]参数
  /// 来控制是否只显示主要部分的边界, 如果你对地区完整度的需求非常高, 那么就把[onlyMainDistrict]
  /// 设置为false, 随之而来像浙江这种地区的边界绘制起来就会非常慢.
  /// 我的测试结果是MIX 3, release模式下需要5-6秒才能绘制完成.
  ///
  /// 采样率[sampleRate]可以控制经纬度列表的密度, 如果地区边界的经纬度列表长度非常长, 造成了卡顿,
  /// 那么可以把采样率调低一点, 这样画出来的区域可能没有采样率为1时那么精确, 但是减小了经纬度列表长度,
  /// 可以提升绘制速度.
  Future<List<Polygon>> addDistrictOutline(
    String districtName, {
    double width = 5,
    Color strokeColor = Colors.green,
    Color fillColor = Colors.transparent,
    bool onlyMainDistrict = true,
    double sampleRate = 1.0,
  }) async {
    assert(districtName != null && districtName.isNotEmpty);
    assert(sampleRate > 0 && sampleRate <= 1);
    final district = await AmapSearch.instance
        .searchDistrict(districtName, showBoundary: true);

    final districtList = await district.districtList;
    if (districtList.isNotEmpty) {
      if (onlyMainDistrict) {
        final sampler = Random();
        List<LatLng> boundary = await district.districtList
            .then((it) => it[0].boundary)
            // 挑出经纬度列表最长的一个边界
            .then((it) =>
                it.reduce((pre, next) => pre.length > next.length ? pre : next))
            // 根据采样率过滤经纬度列表
            .then((it) =>
                it..retainWhere((_) => sampler.nextDouble() <= sampleRate));
        return [
          await addPolygon(PolygonOption(
            latLngList: boundary,
            width: width,
            strokeColor: strokeColor,
            fillColor: fillColor,
          ))
        ];
      } else {
        List<List<LatLng>> boundaryList =
            await (await district.districtList)[0].boundary;
        return [
          for (final boundary in boundaryList)
            await addPolygon(PolygonOption(
              latLngList: boundary,
              width: width,
              strokeColor: strokeColor,
              fillColor: fillColor,
            ))
        ];
      }
    } else {
      return null;
    }
  }

  /// 添加回放轨迹
  Future<PlaybackTrace> addPlaybackTrace(
    List<LatLng> coordinateList, {
    double width = 5,
    Color strokeColor = Colors.green,
    @required ImageProvider iconProvider,
    @required Duration duration,
  }) async {
    assert(coordinateList != null && coordinateList.isNotEmpty);
    // 画轨迹线
    final polyline = await addPolyline(PolylineOption(
      latLngList: coordinateList,
      width: width,
      strokeColor: strokeColor,
    ));
    final marker = await addSmoothMoveMarker(SmoothMoveMarkerOption(
      path: coordinateList,
      duration: duration,
      iconProvider: iconProvider,
    ));

    return PlaybackTrace(marker, polyline);
  }
}
