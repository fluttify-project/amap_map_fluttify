// ignore_for_file: non_constant_identifier_names
part of 'amap_view.widget.dart';

/// marker点击事件回调签名 输入[Marker]对象
typedef Future<void> OnMarkerClicked(Marker marker);

/// 地图点击事件回调签名
typedef Future<void> OnMapClicked(LatLng latLng);

/// 地图移动事件回调签名
typedef Future<void> OnMapMove(MapMove move);

/// 位置移动事件回调签名
typedef Future<void> OnLocationChange(MapLocation move);

/// Marker拖动回调签名
typedef Future<void> OnMarkerDrag(Marker marker);

/// ios请求权限回调签名
typedef Future<void> _OnRequireAlwaysAuth(CLLocationManager manager);

/// 地图截屏回调签名
typedef Future<void> OnScreenShot(Uint8List imageData);

/// 海量点点击回调签名
typedef Future<void> OnMultiPointClicked(
  String id,
  String title,
  String snippet,
  String object,
);

/// 地图控制类
class AmapController extends _Holder
    with WidgetsBindingObserver, _Community, _Pro {
  /// Android构造器
  AmapController.android(com_amap_api_maps_TextureMapView androidController,
      _AmapViewState state) {
    WidgetsBinding.instance.addObserver(this);
    this.androidController = androidController;
    this._state = state;
  }

  /// iOS构造器
  AmapController.ios(MAMapView iosController, _AmapViewState state) {
    WidgetsBinding.instance.addObserver(this);
    this.iosController = iosController;
    this._state = state;
  }

  Future<void> dispose() async {
    _locateSubscription?.cancel();

    await androidController?.onPause();
    await androidController?.onDestroy();

    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint('didChangeAppLifecycleState: $state');
    // 因为这里的生命周期其实已经是App的生命周期了, 所以除了这里还需要在dispose里释放资源
    switch (state) {
      case AppLifecycleState.resumed:
        androidController?.onResume();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        androidController?.onPause();
        break;
      case AppLifecycleState.detached:
        androidController?.onDestroy();
        break;
    }
  }
}

mixin _Community on _Holder {
  /// 获取当前位置
  ///
  /// 由于定位需要时间, 如果进入地图后马上获取位置信息, 获取到的会是null, [getLocation]会默认
  /// 以[interval]500毫秒为间隔循环获取定位信息, 直到获取到的定位不为空. 你可以设置超时时间[timeout], 防止
  /// 一直获取不到定位的情况(比如没有设置[showMyLocation]为true, 或者没有同意权限申请).
  Future<LatLng> getLocation({
    Duration interval = const Duration(milliseconds: 500),
    Duration timeout = const Duration(seconds: 10),
  }) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        return Stream.periodic(interval, (_) => _)
            .asyncMap(
              (count) async {
                final coord = await map.getMyLocation();

                if (coord == null) {
                  return null;
                } else {
                  return LatLng(await coord.latitude, await coord.longitude);
                }
              },
            )
            .take(timeout.inMilliseconds ~/ interval.inMilliseconds)
            .firstWhere((location) => location != null)
            .timeout(timeout, onTimeout: () => null);
      },
      ios: (pool) {
        return Stream.periodic(interval, (_) => _)
            .asyncMap(
              (count) async {
                final location = await iosController.get_userLocation();
                final coord = await location.get_coordinate();

                if (coord == null) {
                  return null;
                } else {
                  return LatLng(await coord.latitude, await coord.longitude);
                }
              },
            )
            .take(timeout.inMilliseconds ~/ interval.inMilliseconds)
            .firstWhere((location) => location != null)
            .timeout(timeout, onTimeout: () => null);
      },
    );
  }

  /// 显示我的位置
  ///
  /// 可配置的参数详见[MyLocationOption]
  Future<void> showMyLocation(MyLocationOption option) async {
    assert(option != null);
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final locationStyle =
            await com_amap_api_maps_model_MyLocationStyle.create__();
        await locationStyle.showMyLocation(option.show);
        await map.setMyLocationEnabled(option.show);

        if (option.show) {
          switch (option.myLocationType) {
            case MyLocationType.Show:
              await locationStyle.myLocationType(
                com_amap_api_maps_model_MyLocationStyle.LOCATION_TYPE_SHOW,
              );
              break;
            case MyLocationType.Locate:
              await locationStyle.myLocationType(
                com_amap_api_maps_model_MyLocationStyle.LOCATION_TYPE_LOCATE,
              );
              break;
            case MyLocationType.Follow:
              await locationStyle.myLocationType(
                com_amap_api_maps_model_MyLocationStyle.LOCATION_TYPE_FOLLOW,
              );
              break;
            case MyLocationType.Rotate:
              await locationStyle.myLocationType(
                com_amap_api_maps_model_MyLocationStyle
                    .LOCATION_TYPE_LOCATION_ROTATE,
              );
              break;
          }
          // 定位间隔
          await locationStyle.interval(option.interval.inMilliseconds);

          // 定位图标
          if (option.iconProvider != null) {
            final imageData = await option.iconProvider
                .toImageData(createLocalImageConfiguration(_state.context));
            final bitmap = await android_graphics_Bitmap.create(imageData);
            final bitmapDescriptor =
                await com_amap_api_maps_model_BitmapDescriptorFactory
                    .fromBitmap(bitmap);
            await locationStyle.myLocationIcon(bitmapDescriptor);
          }
          // 边框颜色
          if (option.strokeColor != null) {
            await locationStyle
                .strokeColor(Int32List.fromList([option.strokeColor.value])[0]);
          }
          // 填充颜色
          if (option.fillColor != null) {
            await locationStyle.radiusFillColor(
                Int32List.fromList([option.fillColor.value])[0]);
          }
          // 边框宽度
          if (option.strokeWidth != null) {
            await locationStyle.strokeWidth(option.strokeWidth);
          }

          // 设置样式
          await map.setMyLocationStyle(locationStyle);
        }

        pool..add(map)..add(locationStyle);
      },
      ios: (pool) async {
        await iosController.set_showsUserLocation(option.show);

        if (option.show) {
          if (option.interval != Duration.zero) {
            _locateSubscription?.cancel();
            _locateSubscription = Stream.periodic(option.interval, (_) => _)
                .listen((_) async =>
                    await iosController.setUserTrackingMode_animated(
                      MAUserTrackingMode.MAUserTrackingModeFollow,
                      true,
                    ));
          }

          switch (option.myLocationType) {
            case MyLocationType.Show:
              await iosController.setUserTrackingMode_animated(
                MAUserTrackingMode.MAUserTrackingModeNone,
                true,
              );
              break;
            // ios端没有只定位一次的选项, 所以这里要模拟一下这个效果
            // 1. 先设置不跟踪位置, 防止定位marker来回跳
            // 2. 获取当前用户位置
            // 3. 把当前地图中心点设置为用户位置
            case MyLocationType.Locate:
              await iosController.setUserTrackingMode_animated(
                MAUserTrackingMode.MAUserTrackingModeNone,
                true,
              );
              final myLocation = await iosController.get_userLocation();
              await iosController.setCenterCoordinate_animated(
                await myLocation.get_coordinate(),
                false,
              );
              break;
            case MyLocationType.Follow:
              await iosController.setUserTrackingMode_animated(
                MAUserTrackingMode.MAUserTrackingModeFollow,
                true,
              );
              break;
            case MyLocationType.Rotate:
              await iosController.setUserTrackingMode_animated(
                MAUserTrackingMode.MAUserTrackingModeFollowWithHeading,
                true,
              );
              break;
          }

          final style = await MAUserLocationRepresentation.create__();

          // 定位图标
          if (option.iconProvider != null) {
            final imageData = await option.iconProvider
                .toImageData(createLocalImageConfiguration(_state.context));
            final bitmap = await UIImage.create(imageData);
            await style.set_image(bitmap);
          }
          // 边框颜色
          if (option.strokeColor != null) {
            final color = await UIColor.create(option.strokeColor);
            await style.set_strokeColor(color);
          }
          // 填充颜色
          if (option.fillColor != null) {
            final color = await UIColor.create(option.fillColor);
            await style.set_fillColor(color);
          }
          // 边框宽度
          if (option.strokeWidth != null) {
            await style.set_lineWidth(option.strokeWidth);
          }

          await iosController.updateUserLocationRepresentation(style);
        } else {
          _locateSubscription?.cancel();
        }
      },
    );
  }

  /// 设置我的位置图标旋转角度
  Future<void> setMyLocationRotateAngle(double angle) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.setMyLocationRotateAngle((360 - angle).abs());

        pool..add(map);
      },
      ios: (pool) async {
        // todo 暂时没有找到比较直接的方式实现
        print('ios端暂时未实现');
//        final annotations = await iosController.get_annotations();
//        for (final MAAnnotation annotation in annotations) {
//          if (await annotation.isMAUserLocation()) {
//            final userLocation = await annotation.asMAUserLocation();
//            userLocation.set_movingDirection(movingDirection)
//            break;
//          }
//        }
      },
    );
  }

  /// 是否显示室内地图
  Future<void> showIndoorMap(bool show) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.showIndoorMap(show);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_showsIndoorMap(show);
      },
    );
  }

  /// 选择显示图层
  Future<void> setMapType(MapType mapType) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        switch (mapType) {
          case MapType.Standard:
            await map.setMapType(1);
            break;
          case MapType.Satellite:
            await map.setMapType(2);
            break;
          case MapType.Night:
            await map.setMapType(3);
            break;
          case MapType.Navi:
            await map.setMapType(4);
            break;
          case MapType.Bus:
            await map.setMapType(5);
            break;
        }

        pool..add(map);
      },
      ios: (pool) async {
        switch (mapType) {
          case MapType.Standard:
            await iosController.set_mapType(MAMapType.MAMapTypeStandard);
            break;
          case MapType.Satellite:
            await iosController.set_mapType(MAMapType.MAMapTypeSatellite);
            break;
          case MapType.Night:
            await iosController.set_mapType(MAMapType.MAMapTypeStandardNight);
            break;
          case MapType.Navi:
            await iosController.set_mapType(MAMapType.MAMapTypeNavi);
            break;
          case MapType.Bus:
            await iosController.set_mapType(MAMapType.MAMapTypeBus);
            break;
        }
      },
    );
  }

  /// 选择地图语言
  Future<void> setMapLanguage(Language language) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        switch (language) {
          case Language.Chinese:
            await map.setMapLanguage(com_amap_api_maps_AMap.CHINESE);
            break;
          case Language.English:
            await map.setMapLanguage(com_amap_api_maps_AMap.ENGLISH);
            break;
        }

        pool..add(map);
      },
      ios: (pool) async {
        switch (language) {
          case Language.Chinese:
            await iosController.performSelectorWithObject__(
                'setMapLanguage:', 0);
            break;
          case Language.English:
            await iosController.performSelectorWithObject__(
                'setMapLanguage:', 1);
            break;
        }
      },
    );
  }

  /// 显示路况信息
  Future<void> showTraffic(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.setTrafficEnabled(enable);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_showTraffic(enable);
      },
    );
  }

  /// 显示缩放控件
  Future<void> showZoomControl(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomControlsEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        print('ios端不支持显示缩放控件');
      },
    );
  }

  /// 显示指南针
  Future<void> showCompass(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setCompassEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_showsCompass(enable);
      },
    );
  }

  /// 显示定位按钮
  Future<void> showLocateControl(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setMyLocationButtonEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        print('ios端不支持显示定位按钮');
      },
    );
  }

  /// 显示比例尺控件
  Future<void> showScaleControl(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScaleControlsEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_showsScale(enable);
      },
    );
  }

  /// 缩放手势使能
  Future<void> setZoomGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomEnabled(enable);
      },
    );
  }

  /// 滑动手势使能
  Future<void> setScrollGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScrollGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_scrollEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future<void> setRotateGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setRotateGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_rotateEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future<void> setTiltGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setTiltGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 所有手势使能
  Future<void> setAllGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setAllGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomEnabled(enable);
        await iosController.set_scrollEnabled(enable);
        await iosController.set_rotateEnabled(enable);
        await iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 设置缩放大小
  ///
  /// 地图的缩放级别一共分为 17 级，从 3 到 19. 数字越大，展示的图面信息越精细
  Future<void> setZoomLevel(double level, {bool animated = true}) async {
    assert(level >= 3 && level <= 19, '缩放范围为3-19');
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomTo(level);
        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        await iosController.setZoomLevel_animated(level, animated);
      },
    );
  }

  /// 获取当前缩放大小
  Future<double> getZoomLevel() async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final camera = await map.getCameraPosition();

        pool..add(map)..add(camera);
        return camera.get_zoom();
      },
      ios: (pool) async {
        return iosController.get_zoomLevel();
      },
    );
  }

  /// 设置缩放是否以中心点为锚点
  Future<void> setZoomByCenter(bool byCenter) async {
    assert(byCenter != null);
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomInByScreenCenter(byCenter);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomingInPivotsAroundAnchorPoint(!byCenter);
      },
    );
  }

  /// 放大一个等级
  Future<void> zoomIn({bool animated = true}) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomIn();
        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.setZoomLevel_animated(currentLevel + 1, animated);
      },
    );
  }

  /// 放大一个等级
  Future<void> zoomOut({bool animated = true}) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomOut();
        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.setZoomLevel_animated(currentLevel - 1, animated);
      },
    );
  }

  /// 设置地图中心点
  ///
  /// [lat]纬度, [lng]经度, [zoomLevel]缩放等级, [bearing]地图选择角度, [tilt]倾斜角
  Future<void> setCenterCoordinate(
    LatLng coordinate, {
    double zoomLevel,
    double bearing,
    double tilt,
    bool animated = true,
  }) async {
    assert(
      zoomLevel == null || (zoomLevel >= 3 && zoomLevel <= 19),
      '缩放范围为3-19',
    );
    final lat = coordinate.latitude;
    final lng = coordinate.longitude;
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final latLng = await com_amap_api_maps_model_LatLng
            .create__double__double(lat, lng);

        final camera = await map.getCameraPosition();
        final finalZoomLevel = zoomLevel ?? await camera.get_zoom();
        final finalBearing = bearing ?? await camera.get_bearing();
        final finalTilt = tilt ?? await camera.get_tilt();
        final cameraPosition = await com_amap_api_maps_model_CameraPosition
            .create__com_amap_api_maps_model_LatLng__float__float__float(
                latLng, finalZoomLevel, finalTilt, finalBearing);

        final cameraUpdate = await com_amap_api_maps_CameraUpdateFactory
            .newCameraPosition(cameraPosition);

        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(latLng)..add(cameraUpdate);
      },
      ios: (pool) async {
        final latLng = await CLLocationCoordinate2D.create(lat, lng);
        if (zoomLevel != null) {
          await iosController.setZoomLevel_animated(zoomLevel, animated);
        }
        if (bearing != null) {
          await iosController.set_rotationDegree(bearing);
        }
        if (tilt != null) {
          await iosController.set_cameraDegree(tilt);
        }
        await iosController.setCenterCoordinate_animated(latLng, animated);

        pool..add(latLng);
      },
    );
  }

  /// 获取地图中心点
  Future<LatLng> getCenterCoordinate() {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final position = await map.getCameraPosition();
        final target = await position.get_target();

        // target不能马上释放, 因为跟返回对象有联系
        pool..add(map)..add(position);

        return LatLng(
          await target.get_latitude(),
          await target.get_longitude(),
        );
      },
      ios: (pool) async {
        final target = await iosController.get_centerCoordinate();
        // target不能马上释放, 因为跟返回对象有联系
        return LatLng(await target.latitude, await target.longitude);
      },
    );
  }

  /// 添加marker
  ///
  /// 在纬度[lat], 经度[lng]的位置添加marker, 并设置标题[title]和副标题[snippet], [iconUri]
  /// 可以是图片url, asset路径或者文件路径.
  /// 其中图片参数[imageConfig]如果不知道怎么创建, 那么就直接调用flutter sdk内提供的[createLocalImageConfiguration]方法创建
  Future<Marker> addMarker(MarkerOption option) {
    assert(option != null);

    final lat = option.latLng.latitude;
    final lng = option.latLng.longitude;
    return platform(
      android: (pool) async {
        // 获取地图
        final map = await androidController.getMap();

        // marker经纬度
        final latLng = await com_amap_api_maps_model_LatLng
            .create__double__double(lat, lng);

        // marker配置
        final markerOption =
            await com_amap_api_maps_model_MarkerOptions.create__();

        // 设置marker经纬度
        await markerOption.position(latLng);
        // 设置marker标题
        if (option.title != null) {
          await markerOption.title(option.title);
        }
        // 设置marker副标题
        if (option.snippet != null) {
          await markerOption.snippet(option.snippet);
        }
        // 设置marker图标
        // 普通图片
        if (option.iconProvider != null) {
          Uint8List iconData = await option.iconProvider
              .toImageData(createLocalImageConfiguration(_state.context));

          final bitmap = await android_graphics_Bitmap.create(iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool..add(bitmap)..add(icon);
        }
        // widget as marker
        else if (option.widget != null) {
          List<Uint8List> iconData =
              await _state.widgetToImageData([option.widget]);

          final bitmap = await android_graphics_Bitmap.create(iconData[0]);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool..add(bitmap)..add(icon);
        }
        // 是否可拖拽
        if (option.draggable != null) {
          await markerOption.draggable(option.draggable);
        }
        // 旋转角度
        if (option.rotateAngle != null) {
          await markerOption.rotateAngle(option.rotateAngle);
        }
        // 锚点 默认在中间底部是最合理的
        await markerOption.anchor(option.anchorU ?? 0.5, option.anchorV ?? 0);
        // 是否可见
        await markerOption.visible(option.visible);

        final marker = await map.addMarker(markerOption);
        // 是否允许弹窗
        if (option.infoWindowEnabled != null) {
          await marker.setInfoWindowEnable(option.infoWindowEnabled);
        }

        // 自定义数据
        if (option.object != null) {
          await marker.setObject(option.object);
        }

        // marker不释放, 还有用
        pool..add(map)..add(latLng)..add(markerOption);

        return Marker.android(marker);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate
            .._iosController = iosController
            .._annotationViewCompleter = Completer(),
        );

        // 创建marker
        final annotation = await MAPointAnnotation.create__();

        final coordinate = await CLLocationCoordinate2D.create(lat, lng);

        // 设置经纬度
        await annotation.set_coordinate(coordinate);

        // 设置标题
        if (option.title != null) {
          await annotation.set_title(option.title);
        }
        // 设置副标题
        if (option.snippet != null) {
          await annotation.set_subtitle(option.snippet);
        }
        // 设置图片
        // 普通图片
        if (option.iconProvider != null) {
          Uint8List iconData = await option.iconProvider
              .toImageData(createLocalImageConfiguration(_state.context));

          final icon = await UIImage.create(iconData);

          // 由于ios端的icon参数在回调中设置, 需要添加属性来实现
          await annotation.addProperty__(1, icon);

          pool..add(icon);
        }
        // widget as marker
        else if (option.widget != null) {
          List<Uint8List> iconData =
              await _state.widgetToImageData([option.widget]);

          final icon = await UIImage.create(iconData[0]);

          // 由于ios端的icon参数在回调中设置, 需要添加属性来实现
          await annotation.addProperty__(1, icon);

          pool..add(icon);
        }
        // 是否可拖拽
        if (option.draggable != null) {
          await annotation.addJsonableProperty__(2, option.draggable);
        }
        // 旋转角度
        if (option.rotateAngle != null) {
          await annotation.addJsonableProperty__(3, option.rotateAngle);
        }
        // 是否允许弹窗
        if (option.infoWindowEnabled != null) {
          annotation.addJsonableProperty__(4, option.infoWindowEnabled);
        }
        // 锚点
        if (option.anchorU != null || option.anchorV != null) {
          await annotation.addJsonableProperty__(5, option.anchorU);
          await annotation.addJsonableProperty__(6, option.anchorV);
        }
        // 自定义数据
        if (option.object != null) {
          await annotation.addJsonableProperty__(7, option.object);
        }
        // 是否可见
        await annotation.addJsonableProperty__(10, option.visible);

        // 添加marker
        await iosController.addAnnotation(annotation);

        // 等待添加完成 获取对应的view
        final annotationViewList =
            await _iosMapDelegate._annotationViewCompleter.future;
        pool.add(coordinate);

        return Marker.ios(annotation, annotationViewList[0], iosController);
      },
    );
  }

  /// 批量添加marker
  ///
  /// 根据[options]批量创建Marker
  Future<List<Marker>> addMarkers(List<MarkerOption> options) async {
    assert(options != null);

    if (options.isEmpty) return Future.value([]);

    final latBatch = options.map((it) => it.latLng.latitude).toList();
    final lngBatch = options.map((it) => it.latLng.longitude).toList();
    final titleBatch = options.map((it) => it.title).toList();
    final snippetBatch = options.map((it) => it.snippet).toList();
    final draggableBatch = options.map((it) => it.draggable).toList();
    final rotateAngleBatch = options.map((it) => it.rotateAngle).toList();
    final anchorUBatch = options.map((it) => it.anchorU).toList();
    final anchorVBatch = options.map((it) => it.anchorV).toList();
    final visibleBatch = options.map((it) => it.visible).toList();
    final infoWindowEnabledBatch =
        options.map((it) => it.infoWindowEnabled).toList();
    final objectBatch = options.map((it) => it.object).toList();
    final iconDataBatch = <Uint8List>[
      ...await Future.wait([
        for (final option in options)
          if (option.iconProvider != null)
            option.iconProvider
                .toImageData(createLocalImageConfiguration(_state.context))
      ]),
      ...await _state.widgetToImageData(options
          .where((element) => element.widget != null)
          .map((e) => e.widget)
          .toList()),
    ];

    return platform(
      android: (pool) async {
        // 获取地图
        final map = await androidController.getMap();
        final latLngBatch = await com_amap_api_maps_model_LatLng
            .create_batch__double__double(latBatch, lngBatch);
        // marker配置
        final markerOptionBatch = await com_amap_api_maps_model_MarkerOptions
            .create_batch__(options.length);
        // 添加经纬度
        await markerOptionBatch.position_batch(latLngBatch);
        // 添加标题
        await markerOptionBatch.title_batch(titleBatch);
        // 添加副标题
        await markerOptionBatch.snippet_batch(snippetBatch);
        // 是否可拖动
        await markerOptionBatch.draggable_batch(draggableBatch);
        // 旋转角度
        await markerOptionBatch.rotateAngle_batch(rotateAngleBatch);
        // 锚点
        await markerOptionBatch.anchor_batch(anchorUBatch, anchorVBatch);
        // 是否可见
        await markerOptionBatch.visible_batch(visibleBatch);
        // 图片
        if (iconDataBatch.isNotEmpty) {
          final bitmapBatch =
              await android_graphics_Bitmap.create_batch(iconDataBatch);
          final iconBatch =
              await com_amap_api_maps_model_BitmapDescriptorFactory_Batch
                  .fromBitmap_batch(bitmapBatch);
          await markerOptionBatch.icon_batch(iconBatch);
          pool..addAll(bitmapBatch)..addAll(iconBatch);
        }

        // 添加marker
        final markers = await map.addMarkers(markerOptionBatch, false);

        // 弹窗使能
        await markers.setInfoWindowEnable_batch(infoWindowEnabledBatch);
        // 自定义数据
        await markers.setObject_batch(objectBatch);

        // marker不释放, 还有用
        pool
          ..add(map)
          ..addAll(latLngBatch)
          ..addAll(markerOptionBatch);
        return markers.map((it) => Marker.android(it)).toList();
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate
            .._iosController = iosController
            .._annotationViewCompleter = Completer(),
        );

        // 创建marker
        final annotationBatch =
            await MAPointAnnotation.create_batch__(options.length);

        // 经纬度列表
        final coordinateBatch =
            await CLLocationCoordinate2D.create_batch(latBatch, lngBatch);
        // 设置经纬度
        await annotationBatch.set_coordinate_batch(coordinateBatch);
        // 设置标题
        await annotationBatch.set_title_batch(titleBatch);
        // 设置副标题
        await annotationBatch.set_subtitle_batch(snippetBatch);
        // 设置图片
        if (iconDataBatch.isNotEmpty) {
          final iconBatch = await UIImage.create_batch(iconDataBatch);
          await annotationBatch.addProperty_batch(1, iconBatch);
          pool.addAll(iconBatch);
        }
        // 是否可拖拽
        await annotationBatch.addJsonableProperty_batch(2, draggableBatch);
        // 旋转角度
        await annotationBatch.addJsonableProperty_batch(3, rotateAngleBatch);
        // 是否允许弹窗
        await annotationBatch.addJsonableProperty_batch(
            4, infoWindowEnabledBatch);
        // 锚点
        await annotationBatch.addJsonableProperty_batch(5, anchorUBatch);
        await annotationBatch.addJsonableProperty_batch(6, anchorVBatch);
        // 自定义数据
        await annotationBatch.addJsonableProperty_batch(7, objectBatch);
        // 是否可见
        await annotationBatch.addJsonableProperty_batch(10, visibleBatch);

        // 添加marker
        await iosController.addAnnotations(annotationBatch);

        // 等待添加完成 获取对应的view
        // 由于只有可见marker才会返回, 防止返回的marker数量和option数量不一致, 这里强制给一个options数量的列表来装返回的marker
        final visibleMarkers =
            await _iosMapDelegate._annotationViewCompleter.future;
        final annotationViewList = <MAAnnotationView>[
          for (int i = 0; i < options.length; i++)
            if (i < visibleMarkers.length) visibleMarkers[i] else null
        ];

        pool.addAll(coordinateBatch);
        return [
          for (int i = 0; i < options.length; i++)
            Marker.ios(
              annotationBatch[i],
              annotationViewList[i],
              iosController,
            )
        ];
      },
    );
  }

  /// 批量添加marker
  ///
  /// 根据[options]批量创建Marker
  Future<SmoothMoveMarker> addSmoothMoveMarker(
      SmoothMoveMarkerOption option) async {
    assert(option != null);
    final latitudeBatch = option.path.map((e) => e.latitude).toList();
    final longitudeBatch = option.path.map((e) => e.longitude).toList();
    final iconData = await option.iconProvider
        ?.toImageData(createLocalImageConfiguration(_state.context));
    return platform(
      android: (pool) async {
        // 获取地图
        final map = await androidController.getMap();

        // 创建平滑移动marker对象
        final marker = await com_amap_api_maps_utils_overlay_SmoothMoveMarker
            .create__com_amap_api_maps_AMap(map);

        // 创建marker的图标
        final bitmap = await android_graphics_Bitmap.create(iconData);
        final bitmapDescriptor =
            await com_amap_api_maps_model_BitmapDescriptorFactory
                .fromBitmap(bitmap);

        // 设置图标
        await marker.setDescriptor(bitmapDescriptor);

        // 动画途经点
        final points = await com_amap_api_maps_model_LatLng
            .create_batch__double__double(latitudeBatch, longitudeBatch);

        // 设置途经点
        await marker.setPoints(points);
        // 设置动画时长
        await marker.setTotalDuration(option.duration.inSeconds);
        // 执行动画
        await marker.startSmoothMove();

        pool
          ..add(map)
          ..add(bitmap)
          ..add(bitmapDescriptor)
          ..addAll(points);
        return SmoothMoveMarker.android(marker);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._iosController = iosController,
        );

        // 创建annotation
        final annotation = await MAAnimatedAnnotation.create__();

        // 动画途经点
        final points = await CLLocationCoordinate2D.create_batch(
            latitudeBatch, longitudeBatch);

        // 设置图片
        // 普通图片
        final icon = await UIImage.create(iconData);
        // 由于ios端的icon参数在回调中设置, 需要添加属性来实现
        await annotation.addProperty__(1, icon);

        // 设置起始点
        await annotation.set_coordinate(points[0]);

        // 添加动画
        final animation = await annotation
            .addMoveAnimationWithKeyCoordinates_count_withDuration_withName_completeCallback(
          points,
          points.length,
          option.duration.inSeconds.toDouble(),
          'name',
          (finished) {},
        );

        await iosController.addAnnotation(annotation);

        pool
          ..addAll(points)
          ..add(icon);
        return SmoothMoveMarker.ios(animation);
      },
    );
  }

  /// 把marker列表从地图上移除
  Future<void> clearMarkers(List<Marker> markers) async {
    await platform(
      android: (pool) async {
        final markerBatch = markers.map((it) => it.androidModel).toList();
        await markerBatch.remove_batch();
      },
      ios: (pool) async {
        final markerBatch = markers.map((it) => it.iosModel).toList();
        await iosController.removeAnnotations(markerBatch);
      },
    );
  }

  /// 清除地图上所有覆盖物
  ///
  /// 根据[keepMyLocation]区分是否保留我的位置的marker
  Future<void> clear({bool keepMyLocation = true}) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.clear__bool(keepMyLocation);

        pool.add(map);
      },
      ios: (pool) async {
        final markers = await iosController.get_annotations();
        final overlays = await iosController.get_overlays();
        await iosController.removeAnnotations(markers);
        await iosController.removeOverlays(overlays);

        pool..addAll(markers.cast<Ref>())..addAll(overlays.cast<Ref>());
      },
    );
  }

  /// 屏幕坐标转经纬度坐标
  Future<LatLng> fromScreenLocation(Point point) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final projection = await map.getProjection();

        final androidPoint = await android_graphics_Point.create(
            point.x.toInt(), point.y.toInt());

        final latLng = await projection.fromScreenLocation(androidPoint);

        pool..add(map)..add(projection)..add(androidPoint)..add(latLng);
        return LatLng(
          await latLng.get_latitude(),
          await latLng.get_longitude(),
        );
      },
      ios: (pool) async {
        final cgPoint = await CGPoint.create(point.x, point.y);
        final coord2d = await iosController.convertPoint_toCoordinateFromView(
            cgPoint, iosController);

        pool..add(cgPoint)..add(coord2d);
        return LatLng(await coord2d.latitude, await coord2d.longitude);
      },
    );
  }

  /// 经纬度坐标转屏幕坐标
  Future<Point> toScreenLocation(LatLng coord) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final projection = await map.getProjection();

        final latLng = await com_amap_api_maps_model_LatLng
            .create__double__double(coord.latitude, coord.longitude);

        final point = await projection.toScreenLocation(latLng);

        pool..add(map)..add(projection)..add(latLng)..add(point);
        return Point((await point.x).toDouble(), (await point.y).toDouble());
      },
      ios: (pool) async {
        final latLng = await CLLocationCoordinate2D.create(
            coord.latitude, coord.longitude);
        final point = await iosController.convertCoordinate_toPointToView(
            latLng, iosController);

        pool..add(latLng)..add(point);
        return Point((await point.x).toDouble(), (await point.y).toDouble());
      },
    );
  }

  /// 添加折线
  ///
  /// 可配置参数详见[PolylineOption]
  Future<Polyline> addPolyline(PolylineOption option) async {
    assert(option != null);

    final latitudeBatch = option.latLngList.map((e) => e.latitude).toList();
    final longitudeBatch = option.latLngList.map((e) => e.longitude).toList();
    final textureData = await option.textureProvider
        ?.toImageData(createLocalImageConfiguration(_state.context));
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList =
            await com_amap_api_maps_model_LatLng.create_batch__double__double(
          latitudeBatch,
          longitudeBatch,
        );

        // 构造折线参数
        final polylineOptions =
            await com_amap_api_maps_model_PolylineOptions.create__();

        // 添加经纬度列表
        await polylineOptions.addAll(latLngList);
        if (option.width != null) {
          await polylineOptions.width(option.width);
        }
        // 颜色
        if (option.strokeColor != null) {
          await polylineOptions
              .color(Int32List.fromList([option.strokeColor.value])[0]);
        }
        // 自定义贴图
        if (textureData != null) {
          final bitmap = await android_graphics_Bitmap.create(textureData);
          final texture = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await polylineOptions.setCustomTexture(texture);
          await polylineOptions.setUseTexture(true);

          pool..add(bitmap)..add(texture);
        }
        // 线段始末端样式, 由于两端的枚举顺序是一样的, 所以这里直接从索引获取枚举
        if (option.lineCapType != null) {
          await polylineOptions.lineCapType(
            com_amap_api_maps_model_PolylineOptions_LineCapType
                .values[option.lineCapType.index],
          );
        }
        // 线段连接处样式, 由于两端的枚举顺序是一样的, 所以这里直接从索引获取枚举
        if (option.lineJoinType != null) {
          await polylineOptions.lineJoinType(
              com_amap_api_maps_model_PolylineOptions_LineJoinType
                  .values[option.lineJoinType.index]);
        }
        // 是否虚线
        if (option.dashType != null) {
          await polylineOptions.setDottedLine(true);
          switch (option.dashType) {
            case DashType.Square:
              await polylineOptions.setDottedLineType(
                  com_amap_api_maps_model_PolylineOptions
                      .DOTTEDLINE_TYPE_SQUARE);
              break;
            case DashType.Circle:
              await polylineOptions.setDottedLineType(
                  com_amap_api_maps_model_PolylineOptions
                      .DOTTEDLINE_TYPE_CIRCLE);
              break;
          }
        }
        // 设置参数
        final polyline = await map.addPolyline(polylineOptions);

        pool
          ..add(map)
          ..add(polylineOptions)
          ..addAll(latLngList);

        return Polyline.android(polyline);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList =
            await CLLocationCoordinate2D.create_batch(
                latitudeBatch, longitudeBatch);

        // 构造折线参数
        final polyline = await MAPolyline.polylineWithCoordinates_count(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          polyline.addJsonableProperty__(1, option.width / pixelRatio);
        }
        // 颜色
        if (option.strokeColor != null) {
          polyline.addJsonableProperty__(2, option.strokeColor.value);
        }
        // 设置图片
        if (textureData != null) {
          final texture = await UIImage.create(textureData);

          polyline.addProperty__(3, texture);

          pool..add(texture);
        }
        // 线段始末端样式, 由于两端的枚举顺序是一样的, 所以这里直接从索引获取枚举
        if (option.lineCapType != null) {
          polyline.addJsonableProperty__(4, option.lineCapType.index);
        }
        // 线段连接处样式, 由于两端的枚举顺序是一样的, 所以这里直接从索引获取枚举
        if (option.lineJoinType != null) {
          polyline.addJsonableProperty__(5, option.lineJoinType.index);
        }
        // 是否虚线
        if (option.dashType != null) {
          polyline.addJsonableProperty__(6, option.dashType.index + 1);
        }

        // 设置参数
        await iosController.addOverlay(polyline);

        pool..addAll(latLngList);

        return Polyline.ios(polyline, iosController);
      },
    );
  }

  /// 添加多边形
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<Polygon> addPolygon(PolygonOption option) {
    assert(option != null, 'option不能为null');

    final latitudeBatch = option.latLngList.map((e) => e.latitude).toList();
    final longitudeBatch = option.latLngList.map((e) => e.longitude).toList();

    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList =
            await com_amap_api_maps_model_LatLng.create_batch__double__double(
          latitudeBatch,
          longitudeBatch,
        );

        // 构造参数
        final polygonOptions =
            await com_amap_api_maps_model_PolygonOptions.create__();

        // 添加参数
        await polygonOptions.addAll(latLngList);
        // 宽度
        if (option.width != null) {
          await polygonOptions.strokeWidth(option.width);
        }
        // 边框颜色
        if (option.strokeColor != null) {
          await polygonOptions
              .strokeColor(Int32List.fromList([option.strokeColor.value])[0]);
        }
        // 填充颜色
        if (option.fillColor != null) {
          await polygonOptions
              .fillColor(Int32List.fromList([option.fillColor.value])[0]);
        }

        // 设置参数
        final polygon = await map.addPolygon(polygonOptions);

        pool
          ..add(map)
          ..add(polygonOptions)
          ..addAll(latLngList);

        return Polygon.android(polygon);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList =
            await CLLocationCoordinate2D.create_batch(
                latitudeBatch, longitudeBatch);

        // 构造折线参数
        final polygon = await MAPolygon.polygonWithCoordinates_count(
            latLngList, latLngList.length);

        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          polygon.addJsonableProperty__(1, option.width / pixelRatio);
        }
        if (option.strokeColor != null) {
          polygon.addJsonableProperty__(2, option.strokeColor.value);
        }
        if (option.fillColor != null) {
          polygon.addJsonableProperty__(3, option.fillColor.value);
        }

        // 设置参数
        await iosController.addOverlay(polygon);

        pool.addAll(latLngList);

        return Polygon.ios(polygon, iosController);
      },
    );
  }

  /// 添加圆
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<Circle> addCircle(CircleOption option) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造点
        final latLng =
            await com_amap_api_maps_model_LatLng.create__double__double(
          option.center.latitude,
          option.center.longitude,
        );

        // 构造参数
        final circleOptions =
            await com_amap_api_maps_model_CircleOptions.create__();

        // 中心点
        await circleOptions.center(latLng);
        // 半径
        await circleOptions.radius(option.radius);
        // 宽度
        if (option.width != null) {
          await circleOptions.strokeWidth(option.width);
        }
        // 边框颜色
        if (option.strokeColor != null) {
          await circleOptions
              .strokeColor(Int32List.fromList([option.strokeColor.value])[0]);
        }
        // 填充颜色
        if (option.fillColor != null) {
          await circleOptions
              .fillColor(Int32List.fromList([option.fillColor.value])[0]);
        }

        // 设置参数
        final circle = await map.addCircle(circleOptions);

        pool..add(map)..add(circleOptions)..add(latLng);

        return Circle.android(circle);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        final latLng = await CLLocationCoordinate2D.create(
          option.center.latitude,
          option.center.longitude,
        );

        // 参数
        final circle = await MACircle.circleWithCenterCoordinate_radius(
          latLng,
          option.radius,
        );

        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          circle.addJsonableProperty__(1, option.width / pixelRatio);
        }
        if (option.strokeColor != null) {
          circle.addJsonableProperty__(2, option.strokeColor.value);
        }
        if (option.fillColor != null) {
          circle.addJsonableProperty__(3, option.fillColor.value);
        }

        // 设置参数
        await iosController.addOverlay(circle);

        return Circle.ios(circle, iosController);
      },
    );
  }

  /// 添加海量点
  Future<MultiPointOverlay> addMultiPointOverlay(
      MultiPointOption option) async {
    assert(option != null && option.pointList.isNotEmpty);

    final latitudeBatch =
        option.pointList.map((it) => it.latLng.latitude).toList();
    final longitudeBatch =
        option.pointList.map((it) => it.latLng.longitude).toList();
    final idBatch = option.pointList.map((it) => it.id).toList();
    final titleBatch = option.pointList.map((it) => it.title).toList();
    final snippetBatch = option.pointList.map((it) => it.snippet).toList();
    final objectBatch = option.pointList.map((it) => it.object).toList();
    Uint8List iconData;
    if (option.iconProvider != null) {
      iconData = await option.iconProvider
          .toImageData(createLocalImageConfiguration(_state.context));
    }

    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final overlayOptions =
            await com_amap_api_maps_model_MultiPointOverlayOptions.create__();

        final latLngBatch = await com_amap_api_maps_model_LatLng
            .create_batch__double__double(latitudeBatch, longitudeBatch);

        // 设置marker图标
        // 普通图片
        if (iconData != null) {
          final bitmap = await android_graphics_Bitmap.create(iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await overlayOptions.icon(icon);

          pool..add(bitmap)..add(icon);
        }

        final multiPointOverlay =
            await map.addMultiPointOverlay(overlayOptions);

        final multiPointList = await com_amap_api_maps_model_MultiPointItem
            .create_batch__com_amap_api_maps_model_LatLng(latLngBatch);
        await multiPointList.setCustomerId_batch(idBatch);
        await multiPointList.setTitle_batch(titleBatch);
        await multiPointList.setSnippet_batch(snippetBatch);
        await multiPointList.setObject_batch(objectBatch);

        await multiPointOverlay.setItems(multiPointList);

        pool
          ..add(map)
          ..addAll(latLngBatch);
        return MultiPointOverlay.android(multiPointOverlay);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        final overlay = await MAMultiPointOverlay.create__();

        final length = option.pointList.length;
        final pointItemList = await MAMultiPointItem.create_batch__(length);

        final latLngBatch = await CLLocationCoordinate2D.create_batch(
            latitudeBatch, longitudeBatch);

        // 设置marker图标
        // 普通图片
        if (iconData != null) {
          final bitmap = await UIImage.create(iconData);
          await overlay.addProperty__(1, bitmap);
          pool.add(bitmap);
        }
        await pointItemList.set_coordinate_batch(latLngBatch);
        await pointItemList.set_customID_batch(idBatch);
        await pointItemList.set_title_batch(titleBatch);
        await pointItemList.set_subtitle_batch(snippetBatch);
        await pointItemList.addJsonableProperty_batch(1, objectBatch);

        await overlay.initWithMultiPointItems(pointItemList);

        iosController.addOverlay(overlay);

        pool..addAll(pointItemList)..addAll(latLngBatch);
        return MultiPointOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 自定义弹窗
  Future<void> showCustomInfoWindow(Marker marker, Widget widget) async {
    final imageData = (await _state.widgetToImageData([widget]))[0];

    // 准备弹窗需要的数据
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod(
          'com.amap.api.maps.AMap::setInfoWindowAdapterX',
          {'refId': map.refId},
        );
        final bitmap = await android_graphics_Bitmap.create(imageData);
        await pushStack('infoWindow', bitmap);

        pool..add(map)..add(bitmap);
      },
      ios: (pool) async {
        // 创建弹窗view
        final bitmap = await UIImage.create(imageData);
        final imageView = await UIImageView.create(bitmap);

        final frame = await imageView.frame;
        final width = await frame.width;
        final height = await frame.height;

        // 去掉默认的弹窗
        await marker.annotationView.set_canShowCallout(
          false,
          viewChannel: false,
        );
        // 由于默认偏移量是0, 这里根据弹窗view设置一下偏移量
        await marker.annotationView.set_calloutOffset(
          await CGPoint.create(-width / 2, -height),
          viewChannel: false,
        );

        // 创建自定义弹窗
        final calloutView = await MACustomCalloutView.create__();
        await calloutView.initWithCustomView(imageView, viewChannel: false);

        // 设置自定义弹窗
        await marker.annotationView
            .set_customCalloutView(calloutView, viewChannel: false);

        pool..add(bitmap)..add(imageView)..add(calloutView);
      },
    );

    // 显示弹窗
    await marker.showInfoWindow();
  }

  /// 设置marker点击监听事件
  Future<void> setMarkerClickedListener(OnMarkerClicked onMarkerClicked) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMarkerClickListener(
            _androidMapDelegate.._onMarkerClicked = onMarkerClicked);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController
            .set_delegate(_iosMapDelegate.._onMarkerClicked = onMarkerClicked);
      },
    );
  }

  /// 设置海量点点击监听事件
  Future<void> setMultiPointClickedListener(
    OnMultiPointClicked onMultiPointClicked,
  ) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMultiPointClickListener(
            _androidMapDelegate.._onMultiPointClicked = onMultiPointClicked);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._onMultiPointClicked = onMultiPointClicked,
        );
      },
    );
  }

  /// 设置marker拖动监听事件
  Future<void> setMarkerDragListener({
    OnMarkerDrag onMarkerDragStart,
    OnMarkerDrag onMarkerDragging,
    OnMarkerDrag onMarkerDragEnd,
  }) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMarkerDragListener(
          _androidMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );
      },
    );
  }

  /// 设置地图点击监听事件
  Future<void> setMapClickedListener(OnMapClicked onMapClick) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMapClickListener(
          _androidMapDelegate.._onMapClick = onMapClick,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._onMapClick = onMapClick,
        );
      },
    );
  }

  /// 设置地图长按监听事件
  Future<void> setMapLongPressedListener(OnMapClicked onMapLongPress) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMapLongClickListener(
          _androidMapDelegate.._onMapLongClick = onMapLongPress,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._onMapLongClick = onMapLongPress,
        );
      },
    );
  }

  /// 设置地图移动监听事件
  Future<void> setMapMoveListener({
    OnMapMove onMapMoveStart,
    OnMapMove onMapMoving,
    OnMapMove onMapMoveEnd,
  }) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnCameraChangeListener(
          _androidMapDelegate
            .._onMapMoveStart = onMapMoveStart
            .._onMapMoving = onMapMoving
            .._onMapMoveEnd = onMapMoveEnd,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate
            .._onMapMoveStart = onMapMoveStart
            .._onMapMoving = onMapMoving
            .._onMapMoveEnd = onMapMoveEnd,
        );
      },
    );
  }

  /// 设置地图移动监听事件
  ///
  /// !还有bug, 建议先使用*amap_location_fluttify*代替
  Future<void> setMyLocationChangeListener(
    OnLocationChange onLocationChange,
  ) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMyLocationChangeListener(
          _androidMapDelegate.._onLocationChange = onLocationChange,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._onLocationChange = onLocationChange,
        );
      },
    );
  }

  /// 请求后台定位 *仅iOS
  Future<void> requireAlwaysAuth() async {
    await platform(
      android: (pool) async {},
      ios: (pool) async {
        final onRequireAuth = (CLLocationManager manager) async {
          await manager?.requestAlwaysAuthorization();
        };
        await iosController.set_delegate(
          _iosMapDelegate.._onRequireAlwaysAuth = onRequireAuth,
        );
      },
    );
  }

  /// 截图
  Future<void> screenShot(OnScreenShot onScreenShot) async {
    assert(onScreenShot != null);
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.getMapScreenShot(
          _androidMapDelegate.._onSnapshot = onScreenShot,
        );

        pool.add(map);
      },
      ios: (pool) async {
        final rect = await iosController.frame;
        await iosController.takeSnapshotInRect_withCompletionBlock(
          rect,
          (image, state) async {
            await onScreenShot(await image.data);
            pool.add(image);
          },
        );

        pool.add(rect);
      },
    );
  }

  /// 自定义地图
  ///
  /// 三个参数对应自定义地图压缩包内的三个文件
  Future<void> setCustomMapStyle({
    String styleDataPath,
    String styleExtraPath,
    String texturePath,
  }) async {
    Uint8List styleData;
    if (styleDataPath != null) {
      styleData = await rootBundle
          .load(styleDataPath)
          .then((byteData) => byteData.buffer.asUint8List());
    }
    Uint8List styleExtra;
    if (styleExtraPath != null) {
      styleExtra = await rootBundle
          .load(styleExtraPath)
          .then((byteData) => byteData.buffer.asUint8List());
    }
    Uint8List texture;
    if (texturePath != null) {
      texture = await rootBundle
          .load(texturePath)
          .then((byteData) => byteData.buffer.asUint8List());
    }
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造选项
        final option =
            await com_amap_api_maps_model_CustomMapStyleOptions.create__();
        await option.setEnable(true);
        if (styleData != null) await option.setStyleData(styleData);
        if (styleExtra != null) await option.setStyleExtraData(styleExtra);
        if (texture != null) await option.setStyleTextureData(texture);

        await map.setCustomMapStyle(option);

        pool..add(map)..add(option);
      },
      ios: (pool) async {
        // 构造选项
        final option = await MAMapCustomStyleOptions.create__();

        if (styleData != null) {
          final styleDataNSData = await NSData.createWithUint8List(styleData);
          await option.set_styleData(styleDataNSData);
          pool.add(styleDataNSData);
        }
        if (styleExtra != null) {
          final styleExtraNSData = await NSData.createWithUint8List(styleExtra);
          await option.set_styleExtraData(styleExtraNSData);
          pool.add(styleExtraNSData);
        }
        if (texture != null) {
          final textureNSData = await NSData.createWithUint8List(texture);
          await option.set_styleTextureData(textureNSData);
          pool.add(textureNSData);
        }

        await iosController.setCustomMapStyleOptions(option);
        await iosController.set_customMapStyleEnabled(true);

        pool.add(option);
      },
    );
  }

  /// 将指定的经纬度列表(包括但不限于marker, polyline, polygon等)调整至同一屏幕中显示
  ///
  /// [bounds]边界点形成的边界, [padding]地图内边距
  Future<void> zoomToSpan(
    List<LatLng> bounds, {
    EdgeInsets padding = const EdgeInsets.all(50),
    bool animated = true,
  }) async {
    final double minLat = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.latitude < cur.latitude ? pre : cur)
        .then((bottom) => bottom.latitude);
    final double minLng = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.longitude < cur.longitude ? pre : cur)
        .then((left) => left.longitude);
    final double maxLat = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.latitude > cur.latitude ? pre : cur)
        .then((top) => top.latitude);
    final double maxLng = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.longitude > cur.longitude ? pre : cur)
        .then((right) => right.longitude);
    final devicePixelRatio = MediaQuery.of(_state.context).devicePixelRatio;

    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 西南角
        final southWest = await com_amap_api_maps_model_LatLng
            .create__double__double(minLat, minLng);
        // 东北角
        final northEast = await com_amap_api_maps_model_LatLng
            .create__double__double(maxLat, maxLng);

        // 可视区域矩形
        final rect = await com_amap_api_maps_model_LatLngBounds
            .create__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
                southWest, northEast);

        // 更新对象 android端由于单位是像素, 所以这里要乘以当前设备的像素密度
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.newLatLngBoundsRect(
          rect,
          (padding.left * devicePixelRatio).toInt(),
          (padding.right.toInt() * devicePixelRatio).toInt(),
          (padding.top.toInt() * devicePixelRatio).toInt(),
          (padding.bottom.toInt() * devicePixelRatio).toInt(),
        );

        if (animated) {
          await map.animateCamera__com_amap_api_maps_CameraUpdate(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool
          ..add(map)
          ..add(southWest)
          ..add(northEast)
          ..add(rect)
          ..add(cameraUpdate);
      },
      ios: (pool) async {
        // 由于屏幕坐标的(0, 0)左上角, 所以需要西北角和东南角
        // 西北角
        final northWest = await CLLocationCoordinate2D.create(maxLat, minLng);
        // 东南角
        final southEast = await CLLocationCoordinate2D.create(minLat, maxLng);

        // 西北角屏幕坐标
        final northWestPoint = await MAMapPointForCoordinate(northWest);
        // 东南角屏幕坐标
        final southEastPoint = await MAMapPointForCoordinate(southEast);

        // 矩形原点x
        final x = await northWestPoint.get_x();
        // 矩形原点y
        final y = await northWestPoint.get_y();
        // 矩形宽度
        final width =
            (await southEastPoint.get_x() - await northWestPoint.get_x()).abs();
        // 矩形高度
        final height =
            (await southEastPoint.get_y() - await northWestPoint.get_y()).abs();

        // 矩形
        final rect = await MAMapRectMake(x, y, width, height);

        await iosController.setVisibleMapRect_edgePadding_animated(
          rect,
          await UIEdgeInsets.create(
            padding.top,
            padding.left,
            padding.bottom,
            padding.right,
          ),
          animated,
        );

        pool
          ..add(northWest)
          ..add(southEast)
          ..add(northWestPoint)
          ..add(southEastPoint)
          ..add(rect);
      },
    );
  }

  /// 限制地图的显示范围
  ///
  /// [southWest]西南角, [northEast]东北角
  Future<void> setMapRegionLimits(LatLng southWest, LatLng northEast) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final southWestPoint = await com_amap_api_maps_model_LatLng
            .create__double__double(southWest.latitude, southWest.longitude);
        final northEastPoint = await com_amap_api_maps_model_LatLng
            .create__double__double(northEast.latitude, northEast.longitude);

        final latLngBounds = await com_amap_api_maps_model_LatLngBounds
            .create__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
                southWestPoint, northEastPoint);

        await map.setMapStatusLimits(latLngBounds);

        pool
          ..add(map)
          ..add(southWestPoint)
          ..add(northEastPoint)
          ..add(latLngBounds);
      },
      ios: (pool) async {
        final center = await CLLocationCoordinate2D.create(
          (southWest.latitude + northEast.latitude) / 2,
          (southWest.longitude + northEast.longitude) / 2,
        );
        final span = await MACoordinateSpanMake(
          northEast.latitude - southWest.latitude,
          northEast.longitude - southWest.longitude,
        );
        final region = await MACoordinateRegionMake(center, span);
        iosController.set_limitRegion(region);

        pool..add(center)..add(span)..add(region);
      },
    );
  }

  /// Marker弹窗点击事件监听
  Future<void> setInfoWindowClickListener(
    OnMarkerClicked onInfoWindowClicked,
  ) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnInfoWindowClickListener(
          _androidMapDelegate.._onInfoWindowClicked = onInfoWindowClicked,
        );
        pool.add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._onInfoWindowClicked = onInfoWindowClicked,
        );
      },
    );
  }

  /// 添加热力图
  Future<HeatmapOverlay> addHeatmapTileOverlay(HeatmapTileOption option) async {
    assert(option != null);
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 创建热力图Provider
        final builder =
            await com_amap_api_maps_model_HeatmapTileProvider_Builder
                .create__();
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final latLng in option.latLngList) {
          latLngList.add(await com_amap_api_maps_model_LatLng
              .create__double__double(latLng.latitude, latLng.longitude));
        }
        await builder.data(latLngList);

        // 创建Tile Overlay选项
        final tileOverlayOption =
            await com_amap_api_maps_model_TileOverlayOptions.create__();
        await tileOverlayOption.tileProvider(await builder.build());

        // 添加热力图
        final heatmap = await map.addTileOverlay(tileOverlayOption);

        pool
          ..add(map)
          ..add(builder)
          ..addAll(latLngList)
          ..add(tileOverlayOption);

        return HeatmapOverlay.android(heatmap);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        // 创建热力图选项
        final overlay = await MAHeatMapTileOverlay.create__();

        // 构造热力图结点
        List<MAHeatMapNode> nodeList = [];
        for (final latLng in option.latLngList) {
          final node = await MAHeatMapNode.create__();
          final coordinate = await CLLocationCoordinate2D.create(
            latLng.latitude,
            latLng.longitude,
          );
          pool..add(node)..add(coordinate);

          // 坐标点
          await node.set_coordinate(coordinate);
          // 权重值 暂时全部都为1
          await node.set_intensity(1);
          nodeList.add(node);
        }
        // 添加结点数据
        await overlay.set_data(nodeList);

        // 添加热力图
        await iosController.addOverlay(overlay);

        pool.addAll(nodeList);

        return HeatmapOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 添加图片覆盖物
  Future<GroundOverlay> addGroundOverlay(GroundOverlayOption option) async {
    assert(option != null);
    final imageData = await option.imageProvider
        .toImageData(createLocalImageConfiguration(_state.context));
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final groundOverlayOption =
            await com_amap_api_maps_model_GroundOverlayOptions.create__();

        // 创建图片边界
        final southWestPoint =
            await com_amap_api_maps_model_LatLng.create__double__double(
                option.southWest.latitude, option.southWest.longitude);
        final northEastPoint =
            await com_amap_api_maps_model_LatLng.create__double__double(
                option.northEast.latitude, option.northEast.longitude);

        final bounds = await com_amap_api_maps_model_LatLngBounds
            .create__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
                southWestPoint, northEastPoint);
        await groundOverlayOption.positionFromBounds(bounds);

        // 创建图片
        final bitmap = await android_graphics_Bitmap.create(imageData);
        final descriptor = await com_amap_api_maps_model_BitmapDescriptorFactory
            .fromBitmap(bitmap);
        await groundOverlayOption.image(descriptor);

        // 进行添加
        final groundOverlay = await map.addGroundOverlay(groundOverlayOption);

        bitmap.recycle();
        pool
          ..add(map)
          ..add(groundOverlayOption)
          ..add(southWestPoint)
          ..add(descriptor)
          ..add(northEastPoint);

        return GroundOverlay.android(groundOverlay);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        final southWestPoint = await CLLocationCoordinate2D.create(
          option.southWest.latitude,
          option.southWest.longitude,
        );
        final northEastPoint = await CLLocationCoordinate2D.create(
          option.northEast.latitude,
          option.northEast.longitude,
        );
        final bounds =
            await MACoordinateBoundsMake(northEastPoint, southWestPoint);

        final bitmap = await UIImage.create(imageData);
        final overlay =
            await MAGroundOverlay.groundOverlayWithBounds_icon(bounds, bitmap);

        // 添加热力图
        await iosController.addOverlay(overlay);

        pool
          ..add(southWestPoint)
          ..add(northEastPoint)
          ..add(bounds)
          ..add(bitmap);

        return GroundOverlay.ios(overlay, iosController);
      },
    );
  }
}

mixin _Pro on _Holder {
  /// 添加瓦片图
  Future<UrlTileOverlay> addUrlTileOverlay(UrlTileOption option) async {
    assert(option != null);
    final width = option.width;
    final height = option.height;
    final urlTemplate = option.urlTemplate;
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final options =
            await com_amap_api_maps_model_TileOverlayOptions.create__();
        final provider = await com_amap_api_maps_model_UrlTileProvider_X.create(
            width, height, urlTemplate);
        await options.tileProvider(provider);
        await options.diskCacheEnabled(true);
        await options.diskCacheSize(100000);
        await options.memoryCacheEnabled(true);
        await options.memCacheSize(100000);
        await options.zIndex(-9999);

        // 进行添加
        final tile = await map.addTileOverlay(options);
        pool..add(map)..add(options)..add(provider);

        return UrlTileOverlay.android(tile);
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        final overlay = await MATileOverlay.create__();
        await overlay.initWithURLTemplate(urlTemplate);
        await overlay.set_tileSize(
          await CGSize.create(width.toDouble(), height.toDouble()),
        );

        // 添加热力图
        await iosController.addOverlay(overlay);

        pool..add(overlay);

        return UrlTileOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 设置地图朝向
  ///
  /// [bearing] 朝向角度, 单位为度(°), 范围为[0°,360°]
  Future<void> setBearing(double bearing) async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final update =
            await com_amap_api_maps_CameraUpdateFactory.changeBearing(bearing);
        await map.animateCamera__com_amap_api_maps_CameraUpdate(update);
      },
      ios: (pool) async {
        final currentRotation = await iosController.get_rotationDegree();
        if ((bearing - currentRotation).abs() > 180) {
          await iosController.setRotationDegree_animated_duration(
              360 - bearing, true, 0.3);
        } else {
          await iosController.setRotationDegree_animated_duration(
              bearing, true, 0.3);
        }
      },
    );
  }
}

class _Holder {
  com_amap_api_maps_TextureMapView androidController;
  MAMapView iosController;

  _AmapViewState _state;

  // iOS端的回调处理类
  final _iosMapDelegate = _IOSMapDelegate();

  // Android端的回调处理类
  final _androidMapDelegate = _AndroidMapDelegate();

  // 定位间隔订阅事件
  StreamSubscription _locateSubscription;
}
