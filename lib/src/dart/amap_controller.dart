part of 'amap_view.widget.dart';

typedef Future<void> OnMarkerClicked(Marker marker);
typedef Future<void> OnMapClicked(LatLng latLng);
typedef Future<void> OnMapMove(MapMove move);
typedef Future<void> OnMarkerDrag(Marker marker);
typedef Future<void> _OnRequireAlwaysAuth(CLLocationManager manager);
typedef Future<void> OnScreenShot(Uint8List imageData);

/// 地图控制类
class AmapController with WidgetsBindingObserver, _Private {
  /// Android构造器
  AmapController.android(this._androidController, this._state) {
    WidgetsBinding.instance.addObserver(this);
  }

  /// iOS构造器
  AmapController.ios(this._iosController, this._state) {
    WidgetsBinding.instance.addObserver(this);
  }

  com_amap_api_maps_MapView _androidController;
  MAMapView _iosController;

  _AmapViewState _state;

  final _iosMapDelegate = _IOSMapDelegate();
  final _androidMapDelegate = _AndroidMapDelegate();

  /// 获取当前位置
  ///
  /// 由于定位需要时间, 如果进入地图后马上获取位置信息, 获取到的会是null, 加入参数[delay]指定
  /// 进入地图后一段时间后再获取定位. 具体数值可以自行尝试判断.
  /// 另外一个解决方案是使用[amap_location_fluttify](https://pub.flutter-io.cn/packages/amap_location_fluttify)
  /// 返回的是经纬度, 如果需要进一步的数据, 可以配合[https://github.com/fluttify-project/amap_search_fluttify]进行逆地理搜索
  Future<LatLng> getLocation({Duration delay = Duration.zero}) async {
    return platform(
      android: (pool) async {
        return Future.delayed(
          delay,
          () async {
            final map = await _androidController.getMap();
            final location = await map.getMyLocation();

            final result = LatLng(
              await location.latitude,
              await location.longitude,
            );
            return result;
          },
        );
      },
      ios: (pool) async {
        return Future.delayed(
          delay,
          () async {
            final location = await _iosController.get_userLocation();
            final coord = await location.get_coordinate();

            final result = LatLng(await coord.latitude, await coord.longitude);
            return result;
          },
        );
      },
    );
  }

  /// 是否显示我的位置
  ///
  /// [strokeColor]精度圈边框颜色, [strokeWidth]精度圈边框宽度, [fillColor]精度圈填充颜色
  Future<void> showMyLocation(
    bool show, {
    Color strokeColor,
    Color fillColor,
    double strokeWidth,
  }) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final locationStyle =
            await createcom_amap_api_maps_model_MyLocationStyle__();
        await locationStyle.showMyLocation(show);
        await map.setMyLocationEnabled(show);
        if (show) {
          // 默认只定位一次
          await locationStyle.myLocationType(1);

          // 边框颜色
          if (strokeColor != null) {
            await locationStyle
                .strokeColor(Int32List.fromList([strokeColor.value])[0]);
          }
          // 填充颜色
          if (fillColor != null) {
            await locationStyle
                .radiusFillColor(Int32List.fromList([fillColor.value])[0]);
          }
          // 边框宽度
          if (strokeWidth != null) {
            await locationStyle.strokeWidth(strokeWidth);
          }

          // 设置样式
          await map.setMyLocationStyle(locationStyle);
        }

        pool..add(map)..add(locationStyle);
      },
      ios: (pool) async {
        await _iosController.set_showsUserLocation(show);

        if (show) {
          await _iosController.setUserTrackingModeAnimated(
            MAUserTrackingMode.MAUserTrackingModeFollow,
            true,
          );

          final style = await createMAUserLocationRepresentation();

          // 边框颜色
          if (strokeColor != null) {
            final color = await createUIColor(strokeColor);
            await style.set_strokeColor(color);
          }
          // 填充颜色
          if (fillColor != null) {
            final color = await createUIColor(fillColor);
            await style.set_fillColor(color);
          }
          // 边框宽度
          if (strokeWidth != null) {
            await style.set_lineWidth(strokeWidth);
          }

          await _iosController.updateUserLocationRepresentation(style);
        }
      },
    );
  }

  /// 是否显示室内地图
  Future showIndoorMap(bool show) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        await map.showIndoorMap(show);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_showsIndoorMap(show);
      },
    );
  }

  /// 选择显示图层
  Future setMapType(MapType mapType) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
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
            await _iosController.set_mapType(MAMapType.MAMapTypeStandard);
            break;
          case MapType.Satellite:
            await _iosController.set_mapType(MAMapType.MAMapTypeSatellite);
            break;
          case MapType.Night:
            await _iosController.set_mapType(MAMapType.MAMapTypeStandardNight);
            break;
          case MapType.Navi:
            await _iosController.set_mapType(MAMapType.MAMapTypeNavi);
            break;
          case MapType.Bus:
            await _iosController.set_mapType(MAMapType.MAMapTypeBus);
            break;
        }
      },
    );
  }

  /// 选择地图语言
  Future setMapLanguage(Language language) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        switch (language) {
          case Language.Chinese:
            await map.setMapLanguage('zh_cn');
            break;
          case Language.English:
            await map.setMapLanguage('en');
            break;
        }

        pool..add(map);
      },
      ios: (pool) async {
        switch (language) {
          case Language.Chinese:
            await performSelectorWithObject(
                _iosController, 'setMapLanguage:', 0);
            break;
          case Language.English:
            await performSelectorWithObject(
                _iosController, 'setMapLanguage:', 1);
            break;
        }
      },
    );
  }

  /// 显示路况信息
  Future showTraffic(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        await map.setTrafficEnabled(enable);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_showTraffic(enable);
      },
    );
  }

  /// 显示缩放控件
  Future showZoomControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
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
  Future showCompass(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setCompassEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_showsCompass(enable);
      },
    );
  }

  /// 显示定位按钮
  Future showLocateControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
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
  Future showScaleControl(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScaleControlsEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_showsScale(enable);
      },
    );
  }

  /// 缩放手势使能
  Future setZoomGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_zoomEnabled(enable);
      },
    );
  }

  /// 滑动手势使能
  Future setScrollGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScrollGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_scrollEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future setRotateGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setRotateGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_rotateEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future setTiltGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setTiltGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 所有手势使能
  Future setAllGesturesEnabled(bool enable) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setAllGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await _iosController.set_zoomEnabled(enable);
        await _iosController.set_scrollEnabled(enable);
        await _iosController.set_rotateEnabled(enable);
        await _iosController.set_rotateCameraEnabled(enable);
      },
    );
  }

  /// 设置缩放大小
  Future setZoomLevel(double level, {bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomTo(level);
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        await _iosController.setZoomLevelAnimated(level, animated);
      },
    );
  }

  /// 放大一个等级
  Future zoomIn({bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomIn();
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await _iosController.get_zoomLevel();
        await _iosController.setZoomLevelAnimated(currentLevel + 1, animated);
      },
    );
  }

  /// 放大一个等级
  Future zoomOut({bool animated = true}) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.zoomOut();
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await _iosController.get_zoomLevel();
        await _iosController.setZoomLevelAnimated(currentLevel - 1, animated);
      },
    );
  }

  /// 设置地图中心点
  Future setCenterCoordinate(
    double lat,
    double lng, {
    double zoomLevel,
    bool animated = true,
  }) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        final latLng =
            await createcom_amap_api_maps_model_LatLng__double__double(
                lat, lng);
        com_amap_api_maps_model_CameraPosition cameraPosition;
        if (zoomLevel == null) {
          // 如果没有设置zoomLevel, 那么就使用当前的zoomLevel
          final camera = await map.getCameraPosition();
          final currentZoomLevel = await camera.get_zoom();
          cameraPosition =
              await createcom_amap_api_maps_model_CameraPosition__com_amap_api_maps_model_LatLng__float__float__float(
                  latLng, currentZoomLevel, 0, 0);
        } else {
          cameraPosition =
              await createcom_amap_api_maps_model_CameraPosition__com_amap_api_maps_model_LatLng__float__float__float(
                  latLng, zoomLevel, 0, 0);
        }

        final cameraUpdate = await com_amap_api_maps_CameraUpdateFactory
            .newCameraPosition(cameraPosition);
        if (animated) {
          await map.animateCamera(cameraUpdate);
        } else {
          await map.moveCamera(cameraUpdate);
        }

        pool..add(map)..add(latLng)..add(cameraUpdate);
      },
      ios: (pool) async {
        final latLng = await createCLLocationCoordinate2D(lat, lng);
        if (zoomLevel != null) {
          await _iosController.setZoomLevelAnimated(zoomLevel, animated);
        }
        await _iosController.setCenterCoordinateAnimated(latLng, animated);

        pool..add(latLng);
      },
    );
  }

  /// 获取地图中心点
  Future<LatLng> getCenterCoordinate() {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

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
        final target = await _iosController.get_centerCoordinate();
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
        final map = await _androidController.getMap();

        // marker经纬度
        final latLng =
            await createcom_amap_api_maps_model_LatLng__double__double(
                lat, lng);

        // marker配置
        final markerOption =
            await createcom_amap_api_maps_model_MarkerOptions__();

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
        if (option.iconUri != null && option.imageConfig != null) {
          Uint8List iconData =
              await _uri2ImageData(option.imageConfig, option.iconUri);

          final bitmap = await createandroid_graphics_Bitmap(iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool..add(bitmap)..add(icon);
        }
        // widget as marker
        else if (option.widget != null) {
          Uint8List iconData = await _state.widgetToImageData(option.widget);

          final bitmap = await createandroid_graphics_Bitmap(iconData);
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
        // 锚点 和ios端统一为默认0.5
        await markerOption.anchor(option.anchorU ?? 0.5, option.anchorV ?? 0.5);

        final marker = await map.addMarker(markerOption);

        // 是否允许弹窗
        if (option.infoWindowEnabled != null) {
          await marker.setInfoWindowEnable(option.infoWindowEnabled);
        }

        // marker不释放, 还有用
        pool..add(map)..add(latLng)..add(markerOption);

        return Marker.android(marker);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._iosController = _iosController,
        );

        // 创建marker
        final pointAnnotation = await createMAPointAnnotation();

        final coordinate = await createCLLocationCoordinate2D(lat, lng);

        // 设置经纬度
        await pointAnnotation.set_coordinate(coordinate);

        // 设置标题
        if (option.title != null) {
          await pointAnnotation.set_title(option.title);
        }
        // 设置副标题
        if (option.snippet != null) {
          await pointAnnotation.set_subtitle(option.snippet);
        }
        // 设置图片
        // 普通图片
        if (option.iconUri != null && option.imageConfig != null) {
          Uint8List iconData =
              await _uri2ImageData(option.imageConfig, option.iconUri);

          final icon = await createUIImage(iconData);

          // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
          // 供ios的回调去获取
          await pushStack('icon', icon);

          pool..add(icon);
        }
        // widget as marker
        else if (option.widget != null) {
          Uint8List iconData = await _state.widgetToImageData(option.widget);

          final icon = await createUIImage(iconData);

          // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
          // 供ios的回调去获取
          await pushStack('icon', icon);

          pool..add(icon);
        }
        // 是否可拖拽
        if (option.draggable != null) {
          await pushStackJsonable('draggable', option.draggable);
        }
        // 旋转角度
        if (option.rotateAngle != null) {
          await pushStackJsonable('rotateAngle', option.rotateAngle);
        }
        // 是否允许弹窗
        if (option.infoWindowEnabled != null) {
          await pushStackJsonable(
              'infoWindowEnabled', option.infoWindowEnabled);
        }
        // 锚点
        if (option.anchorU != null || option.anchorV != null) {
          await pushStackJsonable('anchorU', option.anchorU);
          await pushStackJsonable('anchorV', option.anchorV);
        }

        await _iosController.addAnnotation(pointAnnotation);

        // pointAnnotation不释放, 还有用
        pool..add(coordinate);

        return Marker.ios(pointAnnotation, _iosController);
      },
    );
  }

  /// 批量添加marker
  ///
  /// 根据[options]批量创建Marker, 目前iOS端所有的marker的icon和draggable参数都只能一样
  Future<List<Marker>> addMarkers(List<MarkerOption> options) {
    assert(options != null);

    if (options.isEmpty) return Future.value([]);
    return platform(
      android: (pool) async {
        // 获取地图
        final map = await _androidController.getMap();

        final androidOptions = <com_amap_api_maps_model_MarkerOptions>[];
        for (final option in options) {
          final lat = option.latLng.latitude;
          final lng = option.latLng.longitude;

          // marker经纬度
          final latLng =
              await createcom_amap_api_maps_model_LatLng__double__double(
                  lat, lng);

          // marker配置
          final markerOption =
              await createcom_amap_api_maps_model_MarkerOptions__();

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
          if (option.iconUri != null && option.imageConfig != null) {
            Uint8List iconData =
                await _uri2ImageData(option.imageConfig, option.iconUri);

            final bitmap = await createandroid_graphics_Bitmap(iconData);
            final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
                .fromBitmap(bitmap);
            await markerOption.icon(icon);

            pool..add(bitmap)..add(icon);
          }
          // widget as marker
          else if (option.widget != null) {
            Uint8List iconData = await _state.widgetToImageData(option.widget);

            final bitmap = await createandroid_graphics_Bitmap(iconData);
            final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
                .fromBitmap(bitmap);
            await markerOption.icon(icon);

            pool..add(bitmap)..add(icon);
          }

          // 是否可拖拽
          if (option.draggable != null) {
            await markerOption.draggable(option.draggable);
          }

          androidOptions.add(markerOption);

          pool..add(latLng);
        }

        final markers = await map.addMarkers(androidOptions, false);

        // marker不释放, 还有用
        pool
          ..add(map)
          ..addAll(androidOptions);
        return markers.map((it) => Marker.android(it)).toList();
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._iosController = _iosController,
        );

        final iosOptions = <NSObject>[];
        for (final option in options) {
          final lat = option.latLng.latitude;
          final lng = option.latLng.longitude;

          // 创建marker
          final pointAnnotation = await createMAPointAnnotation();

          final coordinate = await createCLLocationCoordinate2D(lat, lng);

          // 设置经纬度
          await pointAnnotation.set_coordinate(coordinate);

          // 设置标题
          if (option.title != null) {
            await pointAnnotation.set_title(option.title);
          }
          // 设置副标题
          if (option.snippet != null) {
            await pointAnnotation.set_subtitle(option.snippet);
          }
          // 设置图片
          // 普通图片
          if (option.iconUri != null && option.imageConfig != null) {
            Uint8List iconData =
                await _uri2ImageData(option.imageConfig, option.iconUri);

            final icon = await createUIImage(iconData);

            // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
            // 供ios的回调去获取
            await pushStack('icon', icon);

            pool..add(icon);
          }
          // widget as marker
          else if (option.widget != null) {
            Uint8List iconData = await _state.widgetToImageData(option.widget);

            final icon = await createUIImage(iconData);

            // 由于ios端的icon参数在回调中设置, 无法在add的时候设置, 所以需要放到STACK中去
            // 供ios的回调去获取
            await pushStack('icon', icon);

            pool..add(icon);
          }
          // 是否可拖拽
          if (option.draggable != null) {
            await pushStackJsonable('draggable', option.draggable);
          }

          iosOptions.add(pointAnnotation);

          // pointAnnotation不释放, 还有用
          pool..add(coordinate);
        }

        await _iosController.addAnnotations(iosOptions);

        return iosOptions.map((it) => Marker.ios(it, _iosController)).toList();
      },
    );
  }

  /// 清除所有marker
  Future<void> clearMarkers() async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final markers = await map.getMapScreenMarkers();

        for (final marker in markers) {
          marker.remove();
        }

        pool
          ..add(map)
          ..addAll(markers);
      },
      ios: (pool) async {
        final markers = await _iosController.get_annotations();
        await _iosController.removeAnnotations(markers);

        pool..addAll(markers as List<Ref>);
      },
    );
  }

  /// 屏幕坐标转经纬度坐标
  Future<LatLng> fromScreenLocation(Point point) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final projection = await map.getProjection();

        final androidPoint = await createandroid_graphics_Point(
            point.x.toInt(), point.y.toInt());

        final latLng = await projection.fromScreenLocation(androidPoint);

        pool..add(map)..add(projection)..add(androidPoint)..add(latLng);
        return LatLng(
          await latLng.get_latitude(),
          await latLng.get_longitude(),
        );
      },
      ios: (pool) async {
        final cgPoint = await createCGPoint(point.x, point.y);
        final coord2d = await _iosController.convertPointToCoordinateFromView(
            cgPoint, _iosController);

        pool..add(cgPoint)..add(coord2d);
        return LatLng(await coord2d.latitude, await coord2d.longitude);
      },
    );
  }

  /// 经纬度坐标转屏幕坐标
  Future<Point> toScreenLocation(LatLng coord) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        final projection = await map.getProjection();

        final latLng =
            await createcom_amap_api_maps_model_LatLng__double__double(
                coord.latitude, coord.longitude);

        final point = await projection.toScreenLocation(latLng);

        pool..add(map)..add(projection)..add(latLng)..add(point);
        return Point((await point.x).toDouble(), (await point.y).toDouble());
      },
      ios: (pool) async {
        final latLng =
            await createCLLocationCoordinate2D(coord.latitude, coord.longitude);
        final point = await _iosController.convertCoordinateToPointToView(
            latLng, _iosController);

        pool..add(latLng)..add(point);
        return Point((await point.x).toDouble(), (await point.y).toDouble());
      },
    );
  }

  /// 添加折线
  ///
  /// 可配置参数详见[PolylineOption]
  Future<Polyline> addPolyline(PolylineOption option) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final point in option.latLngList) {
          final latLng =
              await createcom_amap_api_maps_model_LatLng__double__double(
                  point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polylineOptions =
            await createcom_amap_api_maps_model_PolylineOptions__();

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
        if (option.customTexture != null && option.imageConfig != null) {
          Uint8List iconData =
              await _uri2ImageData(option.imageConfig, option.customTexture);
          final bitmap = await createandroid_graphics_Bitmap(iconData);
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
        // 设置参数
        final polyline = await map.addPolyline(polylineOptions);

        pool
          ..add(map)
          ..add(polylineOptions)
          ..addAll(latLngList);

        return Polyline.android(polyline);
      },
      ios: (pool) async {
        await _iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList = [];
        for (final point in option.latLngList) {
          final latLng = await createCLLocationCoordinate2D(
              point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polyline = await MAPolyline.polylineWithCoordinatesCount(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (option.width != null) {
          await pushStackJsonable('width', option.width);
        }
        // 颜色
        if (option.strokeColor != null) {
          await pushStackJsonable('strokeColor', option.strokeColor.value);
        }
        // 设置图片
        if (option.customTexture != null && option.imageConfig != null) {
          Uint8List textureData =
              await _uri2ImageData(option.imageConfig, option.customTexture);

          final texture = await createUIImage(textureData);

          await pushStack('texture', texture);

          pool..add(texture);
        }
        // 线段始末端样式, 由于两端的枚举顺序是一样的, 所以这里直接从索引获取枚举
        if (option.lineCapType != null) {
          await pushStackJsonable(
            'lineCapType',
            option.lineCapType.index,
          );
        }
        // 线段连接处样式, 由于两端的枚举顺序是一样的, 所以这里直接从索引获取枚举
        if (option.lineJoinType != null) {
          await pushStackJsonable(
            'lineJoinType',
            option.lineJoinType.index,
          );
        }

        // 设置参数
        await _iosController.addOverlay(polyline);

        pool..addAll(latLngList);

        return Polyline.ios(polyline, _iosController);
      },
    );
  }

  /// 添加多边形
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<void> addPolygon(PolygonOption option) {
    assert(option != null, 'option不能为null');

    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造折线点
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final point in option.latLngList) {
          final latLng =
              await createcom_amap_api_maps_model_LatLng__double__double(
                  point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造参数
        final polygonOptions =
            await createcom_amap_api_maps_model_PolygonOptions__();

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
        await map.addPolygon(polygonOptions);

        pool
          ..add(map)
          ..add(polygonOptions)
          ..addAll(latLngList);
      },
      ios: (pool) async {
        await _iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList = [];
        for (final point in option.latLngList) {
          final latLng = await createCLLocationCoordinate2D(
              point.latitude, point.longitude);
          latLngList.add(latLng);
        }

        // 构造折线参数
        final polygon = await MAPolygon.polygonWithCoordinatesCount(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (option.width != null)
          await pushStackJsonable('width', option.width);
        if (option.strokeColor != null)
          await pushStackJsonable('strokeColor', option.strokeColor.value);
        if (option.fillColor != null)
          await pushStackJsonable('fillColor', option.fillColor.value);

        // 设置参数
        await _iosController.addOverlay(polygon);

        pool
          ..add(polygon)
          ..addAll(latLngList);
      },
    );
  }

  /// 添加圆
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<void> addCircle(CircleOption option) {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造点
        final latLng =
            await createcom_amap_api_maps_model_LatLng__double__double(
          option.center.latitude,
          option.center.longitude,
        );

        // 构造参数
        final circleOptions =
            await createcom_amap_api_maps_model_CircleOptions__();

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
        await map.addCircle(circleOptions);

        pool..add(map)..add(circleOptions)..add(latLng);
      },
      ios: (pool) async {
        await _iosController.set_delegate(_iosMapDelegate);

        final latLng = await createCLLocationCoordinate2D(
          option.center.latitude,
          option.center.longitude,
        );

        // 参数
        final circle = await MACircle.circleWithCenterCoordinateRadius(
          latLng,
          option.radius,
        );

        // 宽度和颜色需要设置到STACK里去
        if (option.width != null)
          await pushStackJsonable('width', option.width);
        if (option.strokeColor != null)
          await pushStackJsonable('strokeColor', option.strokeColor.value);
        if (option.fillColor != null)
          await pushStackJsonable('fillColor', option.fillColor.value);

        // 设置参数
        await _iosController.addOverlay(circle);

        pool..add(circle);
      },
    );
  }

  /// 设置marker点击监听事件
  Future<void> setMarkerClickedListener(OnMarkerClicked onMarkerClicked) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMarkerClickListener(
            _androidMapDelegate.._onMarkerClicked = onMarkerClicked);

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController
            .set_delegate(_iosMapDelegate.._onMarkerClicked = onMarkerClicked);
      },
    );
  }

  /// 设置marker拖动监听事件
  Future<void> setMarkerDragListener({
    OnMarkerDrag onMarkerDragStart,
    OnMarkerDrag onMarkerDragging,
    OnMarkerDrag onMarkerDragEnd,
  }) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMarkerDragListener(
          _androidMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
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
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnMapClickListener(
          _androidMapDelegate.._onMapClick = onMapClick,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate.._onMapClick = onMapClick,
        );
      },
    );
  }

  /// 设置地图移动监听事件
  Future<void> setMapMoveListener({
    OnMapMove onMapMoveStart,
    OnMapMove onMapMoveEnd,
  }) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        await map.setOnCameraChangeListener(
          _androidMapDelegate
            .._onMapMoveStart = onMapMoveStart
            .._onMapMoveEnd = onMapMoveEnd,
        );

        pool..add(map);
      },
      ios: (pool) async {
        await _iosController.set_delegate(
          _iosMapDelegate
            .._onMapMoveStart = onMapMoveStart
            .._onMapMoveEnd = onMapMoveEnd,
        );
      },
    );
  }

  /// 请求后台定位 *仅iOS
  Future<void> requireAlwaysAuth() {
    return platform(
      android: (pool) async {},
      ios: (pool) async {
        final onRequireAuth = (CLLocationManager manager) async {
          await manager?.requestAlwaysAuthorization();
        };
        await _iosController.set_delegate(
          _iosMapDelegate.._onRequireAlwaysAuth = onRequireAuth,
        );
      },
    );
  }

  /// 截图
  Future<void> screenShot(OnScreenShot onScreenShot) {
    assert(onScreenShot != null);
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();
        await map.getMapScreenShot(
          _androidMapDelegate.._onSnapshot = onScreenShot,
        );

        pool.add(map);
      },
      ios: (pool) async {
        final rect = await _iosController.frame;
        await _iosController.takeSnapshotInRectWithCompletionBlock(
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
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        // 构造选项
        final option =
            await createcom_amap_api_maps_model_CustomMapStyleOptions__();
        await option.setEnable(true);
        if (styleData != null) await option.setStyleData(styleData);
        if (styleExtra != null) await option.setStyleExtraData(styleExtra);
        if (texture != null) await option.setStyleTextureData(texture);

        await map.setCustomMapStyle(option);

        pool..add(map)..add(option);
      },
      ios: (pool) async {
        // 构造选项
        final option = await createMAMapCustomStyleOptions();

        if (styleData != null) {
          final styleDataNSData = await createNSDataWithUint8List(styleData);
          await option.set_styleData(styleDataNSData);
          pool.add(styleDataNSData);
        }
        if (styleExtra != null) {
          final styleExtraNSData = await createNSDataWithUint8List(styleExtra);
          await option.set_styleExtraData(styleExtraNSData);
          pool.add(styleExtraNSData);
        }
        if (texture != null) {
          final textureNSData = await createNSDataWithUint8List(texture);
          await option.set_styleTextureData(textureNSData);
          pool.add(textureNSData);
        }

        await _iosController.setCustomMapStyleOptions(option);
        await _iosController.set_customMapStyleEnabled(true);

        pool.add(option);
      },
    );
  }

  /// 将所有动态加载的Marker覆盖物调整至同一屏幕中显示
  Future<void> zoomToSpan(List<LatLng> bounds) async {
    return platform(
      android: (pool) async {
        final map = await _androidController.getMap();

        final builder = await com_amap_api_maps_model_LatLngBounds.builder();
        // todo 在dart这边使用算法算出东北角和西南角的值, 代替调用原生调用
        for (final latLng in bounds) {
          await builder.include(
              await createcom_amap_api_maps_model_LatLng__double__double(
                  latLng.latitude, latLng.longitude));
        }
        final cameraUpdate = await com_amap_api_maps_CameraUpdateFactory
            .newLatLngBounds(await builder.build(), 50);

        await map.moveCamera(cameraUpdate);

        pool..add(map)..add(builder)..add(cameraUpdate);
      },
      ios: (pool) async {
//        pool.add(option);
      },
    );
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint('didChangeAppLifecycleState: $state');
    switch (state) {
      case AppLifecycleState.resumed:
        _androidController?.onResume();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        _androidController?.onPause();
        break;
      case AppLifecycleState.suspending:
        break;
    }
  }
}

class _IOSMapDelegate extends NSObject with MAMapViewDelegate {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapClicked _onMapClick;
  OnMapMove _onMapMoveStart;
  OnMapMove _onMapMoveEnd;
  _OnRequireAlwaysAuth _onRequireAlwaysAuth;
  MAMapView _iosController;

  @override
  Future<void> mapViewDidAnnotationViewTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    super.mapViewDidAnnotationViewTapped(mapView, view);
    if (_onMarkerClicked != null) {
      await _onMarkerClicked(
        Marker.ios(
          // 这里由于传入的类型是MAAnnotation, 而fluttify对于抽象类的实体子类的处理方式是找到sdk
          // 内的第一个实体子类进行实例化, 这里如果放任不管取第一个实体子类的话是MAGroundOverlay
          // 跟当前需要的MAPointAnnotation类是冲突的.
          //
          // 解决办法很简单, 把refId取出来放到目标实体类里就行了
          MAPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapViewAnnotationViewdidChangeDragStatefromOldState(
    MAMapView mapView,
    MAAnnotationView view,
    MAAnnotationViewDragState newState,
    MAAnnotationViewDragState oldState,
  ) async {
    super.mapViewAnnotationViewdidChangeDragStatefromOldState(
      mapView,
      view,
      newState,
      oldState,
    );
    if (_onMarkerDragStart != null &&
        newState ==
            MAAnnotationViewDragState.MAAnnotationViewDragStateStarting) {
      await _onMarkerDragStart(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }

    if (_onMarkerDragging != null &&
        newState ==
            MAAnnotationViewDragState.MAAnnotationViewDragStateDragging) {
      await _onMarkerDragging(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }

    if (_onMarkerDragEnd != null &&
        newState == MAAnnotationViewDragState.MAAnnotationViewDragStateEnding) {
      await _onMarkerDragEnd(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapViewDidSingleTappedAtCoordinate(
    MAMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    super.mapViewDidSingleTappedAtCoordinate(mapView, coordinate);
    if (_onMapClick != null) {
      await _onMapClick(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }

  @override
  Future<void> mapViewMapWillMoveByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    super.mapViewMapWillMoveByUser(mapView, wasUserAction);
    if (_onMapMoveStart != null) {
      final location = await mapView.get_centerCoordinate();
      await _onMapMoveStart(MapMove(
        latLng: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapViewMapDidMoveByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    super.mapViewMapDidMoveByUser(mapView, wasUserAction);
    if (_onMapMoveEnd != null) {
      final location = await mapView.get_centerCoordinate();
      await _onMapMoveEnd(MapMove(
        latLng: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapViewRequireLocationAuth(
    CLLocationManager locationManager,
  ) async {
    super.mapViewRequireLocationAuth(locationManager);
    if (_onRequireAlwaysAuth != null) {
      await _onRequireAlwaysAuth(locationManager);
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        com_amap_api_maps_AMap_OnMarkerClickListener,
        com_amap_api_maps_AMap_OnMarkerDragListener,
        com_amap_api_maps_AMap_OnMapClickListener,
        com_amap_api_maps_AMap_OnCameraChangeListener,
        com_amap_api_maps_AMap_OnMapScreenShotListener {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapMove _onMapMoveStart;
  OnMapMove _onMapMoveEnd;
  OnMapClicked _onMapClick;
  OnScreenShot _onSnapshot;

  // 为了和ios端行为保持一致, 需要屏蔽掉移动过程中的回调
  bool _moveStarted = false;

  @override
  Future<bool> onMarkerClick(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerClick(var1);
    if (_onMarkerClicked != null) {
      await var1.showInfoWindow();
      await _onMarkerClicked(Marker.android(var1));
    }
    return true;
  }

  @override
  Future<void> onMarkerDragStart(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDragStart(var1);
    if (_onMarkerDragStart != null) {
      await _onMarkerDragStart(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDrag(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDrag(var1);
    if (_onMarkerDragging != null) {
      await _onMarkerDragging(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDragEnd(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerDragEnd(var1);
    if (_onMarkerDragEnd != null) {
      await _onMarkerDragEnd(Marker.android(var1));
    }
  }

  @override
  Future<void> onMapClick(com_amap_api_maps_model_LatLng var1) async {
    super.onMapClick(var1);
    if (_onMapClick != null) {
      await _onMapClick(LatLng(
        await var1.get_latitude(),
        await var1.get_longitude(),
      ));
    }
  }

  @override
  Future<void> onCameraChange(
    com_amap_api_maps_model_CameraPosition var1,
  ) async {
    super.onCameraChange(var1);
    if (_onMapMoveStart != null && !_moveStarted) {
      final location = await var1.get_target();
      await _onMapMoveStart(MapMove(
        latLng: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        tilt: await var1.get_tilt(),
        isAbroad: await var1.get_isAbroad(),
      ));
      // 由于ios端只有`开始`和`结束`的回调, 而android这边是只要改变就有回调, 这里回调过
      // 第一次之后就把标记记为已经触发, 在移动结束后再置回来
      _moveStarted = true;
    }
  }

  @override
  Future<void> onCameraChangeFinish(
    com_amap_api_maps_model_CameraPosition var1,
  ) async {
    super.onCameraChangeFinish(var1);
    if (_onMapMoveEnd != null) {
      final location = await var1.get_target();
      await _onMapMoveEnd(MapMove(
        latLng: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        tilt: await var1.get_tilt(),
        isAbroad: await var1.get_isAbroad(),
      ));
    }
    // 无论有没有设置过回调, 这里都给它置回来
    _moveStarted = false;
  }

  @override
  Future<void> onMapScreenShot(android_graphics_Bitmap var1) async {
    super.onMapScreenShot(var1);
    if (_onSnapshot != null) {
      await _onSnapshot(await var1.data);
      var1.recycle(); // 回收原生的Bitmap, 由于没有后续操作, 异步执行也无妨.
    }
  }
}

mixin _Private {
  Future<Uint8List> _uri2ImageData(
    ImageConfiguration config,
    Uri iconUri,
  ) async {
    final imageData = Completer<Uint8List>();
    switch (iconUri.scheme) {
      // 网络图片
      case 'https':
      case 'http':
        HttpClient httpClient = HttpClient();
        var request = await httpClient.getUrl(iconUri);
        var response = await request.close();
        imageData.complete(await consolidateHttpClientResponseBytes(response));
        break;
      // 文件图片
      case 'file':
        final imageFile = File.fromUri(iconUri);
        imageData.complete(imageFile.readAsBytesSync());
        break;
      // asset图片
      default:
        // asset的bug描述(https://github.com/flutter/flutter/issues/24865):
        // android和ios平台上都取了1.0密度的图片, android上就显示了1.0密度的图片, 而ios
        // 平台上使用的图片也是1.0密度, 但是根据设备密度进行了对应的放大, 导致了android和ios
        // 两端的图片的大小不一致, 这里只对android根据密度选择原始图片, ios原封不动
        // 这样做android端能够保证完美, ios端的话图片会有点糊, 因为原始图片是1.0密度, 但是这样
        // 的话两端大小是一致的, 如果要求再高一点的话, ios这边对图片根据设备密度选择好图片后, 再进行对应密度
        // 的缩小, 就是完美的了, 但是处理起来比较麻烦, 这里就不去处理了
        if (Platform.isAndroid) {
          AssetImage(iconUri.path)
              .resolve(config)
              .addListener(ImageStreamListener((imageInfo, sync) async {
            final byteData =
                await imageInfo.image.toByteData(format: ImageByteFormat.png);
            imageData.complete(byteData.buffer.asUint8List());
          }));
        } else {
          final byteData = await rootBundle.load(iconUri.path);
          imageData.complete(byteData.buffer.asUint8List());
        }
        break;
    }
    return imageData.future;
  }
}
