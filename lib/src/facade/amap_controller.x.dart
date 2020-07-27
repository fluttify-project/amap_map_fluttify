import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/material.dart';

/// 可直接扩展的部分
extension AmapControllerX on AmapController {
  /// 添加图片覆盖物
  Future<GroundOverlay> addGroundOverlay(GroundOverlayOption option) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 添加热力图
  Future<HeatmapOverlay> addHeatmapTileOverlay(HeatmapTileOption option) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 将指定的经纬度列表(包括但不限于marker, polyline, polygon等)调整至同一屏幕中显示
  ///
  /// [bounds]边界点形成的边界, [padding]地图内边距
  Future<void> zoomToSpan(
    List<LatLng> bounds, {
    EdgeInsets padding = const EdgeInsets.all(50),
    bool animated = true,
  }) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 自定义地图
  ///
  /// 三个参数对应自定义地图压缩包内的三个文件
  Future<void> setCustomMapStyle({
    String styleDataPath,
    String styleExtraPath,
    String texturePath,
  }) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 设置海量点点击监听事件
  Future<void> setMultiPointClickedListener(
    OnMultiPointClicked onMultiPointClicked,
  ) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 添加平滑移动marker
  ///
  /// 根据[options]批量创建Marker
  Future<SmoothMoveMarker> addSmoothMoveMarker(
      SmoothMoveMarkerOption option) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 添加海量点
  Future<MultiPointOverlay> addMultiPointOverlay(
      MultiPointOption option) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 设置地图朝向
  ///
  /// [bearing] 朝向角度, 单位为度(°), 范围为[0°,360°]
  Future<void> setBearing(double bearing, {bool animated = true}) {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 设置地图倾斜度
  Future<void> setTilt(double tilt, {bool animated = true}) {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 显示/隐藏3D楼块效果
  Future<void> showBuildings(bool show) {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 显示/隐藏地图上的文字标注
  Future<void> showMapText(bool show) {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 一次性设置地图视角
  Future<void> setCameraPosition({
    @required LatLng coordinate,
    double zoom,
    double tilt,
    double bearing,
    bool animated = true,
    Duration duration = const Duration(milliseconds: 500),
  }) {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
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
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
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
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }

  /// 添加回放轨迹
  Future<PlaybackTrace> addPlaybackTrace(
    List<LatLng> coordinateList, {
    double width = 5,
    Color strokeColor = Colors.green,
    @required ImageProvider iconProvider,
    @required Duration duration,
  }) async {
    throw UnimplementedError('请联系qq 382146139购买静态扩展方案');
  }
}
