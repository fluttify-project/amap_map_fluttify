// ignore_for_file: non_constant_identifier_names
part of 'amap_view.widget.dart';

class _IOSMapDelegate extends NSObject
    with MAMapViewDelegate, MAMultiPointOverlayRendererDelegate {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapClicked _onMapClick;
  OnMapClicked _onMapLongClick;
  OnMapMove _onMapMoveStart;
  OnMapMove _onMapMoving;
  OnMapMove _onMapMoveEnd;
  _OnRequireAlwaysAuth _onRequireAlwaysAuth;
  OnLocationChange _onLocationChange;
  OnMarkerClicked _onInfoWindowClicked;
  OnMultiPointClicked _onMultiPointClicked;

  MAMapView _iosController;
  Completer<List<MAAnnotationView>> _annotationViewCompleter;

  @override
  Future<void> mapView_didAddAnnotationViews(
    MAMapView mapView,
    List<NSObject> views,
  ) async {
    super.mapView_didAddAnnotationViews(mapView, views);
    if (_annotationViewCompleter?.isCompleted == false) {
      List<MAAnnotationView> result = [
        for (final view in views)
          TypeOpAmapMapFluttifyIOS(view).as__<MAAnnotationView>()
      ];
      _annotationViewCompleter.complete(result);
    }
  }

  @override
  Future<void> mapView_didAnnotationViewTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    super.mapView_didAnnotationViewTapped(mapView, view);
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
          view,
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_annotationView_didChangeDragState_fromOldState(
    MAMapView mapView,
    MAAnnotationView view,
    MAAnnotationViewDragState newState,
    MAAnnotationViewDragState oldState,
  ) async {
    super.mapView_annotationView_didChangeDragState_fromOldState(
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
          view,
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
          view,
          _iosController,
        ),
      );
    }

    if (_onMarkerDragEnd != null &&
        newState == MAAnnotationViewDragState.MAAnnotationViewDragStateEnding) {
      await _onMarkerDragEnd(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          view,
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_didSingleTappedAtCoordinate(
    MAMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    super.mapView_didSingleTappedAtCoordinate(mapView, coordinate);
    if (_onMapClick != null) {
      await _onMapClick(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }

  @override
  Future<void> mapView_didLongPressedAtCoordinate(
    MAMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    super.mapView_didLongPressedAtCoordinate(mapView, coordinate);
    if (_onMapLongClick != null) {
      await _onMapLongClick(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }

  @override
  Future<void> mapViewRegionChanged(MAMapView mapView) async {
    super.mapViewRegionChanged(mapView);
    if (_onMapMoving != null) {
      final location = await mapView.get_centerCoordinate();
      await _onMapMoving(MapMove(
        latLng: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapView_regionWillChangeAnimated_wasUserAction(
    MAMapView mapView,
    bool animated,
    bool wasUserAction,
  ) async {
    super.mapView_regionWillChangeAnimated_wasUserAction(
      mapView,
      animated,
      wasUserAction,
    );
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
  Future<void> mapView_regionDidChangeAnimated_wasUserAction(
    MAMapView mapView,
    bool animated,
    bool wasUserAction,
  ) async {
    super.mapView_regionDidChangeAnimated_wasUserAction(
      mapView,
      animated,
      wasUserAction,
    );
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
  Future<void> mapView_mapWillZoomByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    super.mapView_mapWillZoomByUser(mapView, wasUserAction);
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
  Future<void> mapView_mapDidZoomByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    super.mapView_mapDidZoomByUser(mapView, wasUserAction);
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

  @override
  Future<void> mapView_didUpdateUserLocation_updatingLocation(
    MAMapView mapView,
    MAUserLocation userLocation,
    bool updatingLocation,
  ) async {
    super.mapView_didUpdateUserLocation_updatingLocation(
      mapView,
      userLocation,
      updatingLocation,
    );
    if (_onLocationChange != null) {
      await _onLocationChange(MapLocation.ios(userLocation));
    }
  }

  @override
  Future<void> mapView_didAnnotationViewCalloutTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    super.mapView_didAnnotationViewCalloutTapped(mapView, view);
    if (_onInfoWindowClicked != null) {
      await _onInfoWindowClicked(
        Marker.ios(
          MAPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
          view,
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_didAddOverlayRenderers(
    MAMapView mapView,
    List<NSObject> overlayRenderers,
  ) async {
    super.mapView_didAddOverlayRenderers(mapView, overlayRenderers);
    if (overlayRenderers.length == 1 &&
        await TypeOpAmapMapFluttifyIOS(overlayRenderers[0])
            .is__<MAMultiPointOverlayRenderer>()) {
      final multiPointRenderer = TypeOpAmapMapFluttifyIOS(overlayRenderers[0])
          .as__<MAMultiPointOverlayRenderer>();
      multiPointRenderer.set_delegate(this);
    }
  }

  @override
  Future<void> multiPointOverlayRenderer_didItemTapped(
    MAMultiPointOverlayRenderer renderer,
    MAMultiPointItem item,
  ) async {
    super.multiPointOverlayRenderer_didItemTapped(renderer, item);
    if (_onMultiPointClicked != null) {
      final id = await item.get_customID();
      final title = await item.get_title();
      final snippet = await item.get_subtitle();
      final object = await item.getJsonableProperty__(1);
      _onMultiPointClicked(id, title, snippet, object);
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        com_amap_api_maps_AMap_OnMarkerClickListener,
        com_amap_api_maps_AMap_OnMarkerDragListener,
        com_amap_api_maps_AMap_OnMapClickListener,
        com_amap_api_maps_AMap_OnMapLongClickListener,
        com_amap_api_maps_AMap_OnCameraChangeListener,
        com_amap_api_maps_AMap_OnMapScreenShotListener,
        com_amap_api_maps_AMap_OnMyLocationChangeListener,
        com_amap_api_maps_AMap_OnInfoWindowClickListener,
        com_amap_api_maps_AMap_OnMapLoadedListener,
        com_amap_api_maps_AMap_OnMultiPointClickListener {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapMove _onMapMoveStart;
  OnMapMove _onMapMoving;
  OnMapMove _onMapMoveEnd;
  OnMapClicked _onMapClick;
  OnMapClicked _onMapLongClick;
  OnScreenShot _onSnapshot;
  OnLocationChange _onLocationChange;
  OnMarkerClicked _onInfoWindowClicked;
  VoidCallback _onMapLoaded;
  OnMultiPointClicked _onMultiPointClicked;

  bool _moveStarted = false;

  @override
  Future<bool> onMarkerClick(com_amap_api_maps_model_Marker var1) async {
    super.onMarkerClick(var1);
    if (_onMarkerClicked != null) {
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
    if (_onMapMoveStart != null) {
      final location = await var1.get_target();
      if (_onMapMoving != null && _moveStarted) {
        await _onMapMoving(MapMove(
          latLng: LatLng(
            await location.get_latitude(),
            await location.get_longitude(),
          ),
          zoom: await var1.get_zoom(),
          tilt: await var1.get_tilt(),
          isAbroad: await var1.get_isAbroad(),
        ));
      } else if (_onMapMoveStart != null && !_moveStarted) {
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
  Future<void> onMapScreenShot__android_graphics_Bitmap(
      android_graphics_Bitmap var1) async {
    super.onMapScreenShot__android_graphics_Bitmap(var1);
    if (_onSnapshot != null) {
      await _onSnapshot(await var1.data);
      var1.recycle(); // 回收原生的Bitmap, 由于没有后续操作, 异步执行也无妨.
    }
  }

  @override
  Future<void> onMyLocationChange(android_location_Location var1) async {
    super.onMyLocationChange(var1);
    if (_onLocationChange != null) {
      await _onLocationChange(MapLocation.android(var1));
    }
  }

  @override
  Future<void> onInfoWindowClick(com_amap_api_maps_model_Marker var1) async {
    super.onInfoWindowClick(var1);
    if (_onInfoWindowClicked != null) {
      await _onInfoWindowClicked(Marker.android(var1));
    }
  }

  @override
  Future<void> onMapLoaded() async {
    super.onMapLoaded();
    if (_onMapLoaded != null) {
      _onMapLoaded();
    }
  }

  @override
  Future<bool> onPointClick(com_amap_api_maps_model_MultiPointItem var1) async {
    super.onPointClick(var1);
    if (_onMultiPointClicked != null) {
      final id = await var1.getCustomerId();
      final title = await var1.getTitle();
      final snippet = await var1.getSnippet();
      final object = await var1.getObject();
      _onMultiPointClicked(id, title, snippet, object);
    }
    return true;
  }

  @override
  Future<void> onMapLongClick(com_amap_api_maps_model_LatLng var1) async {
    super.onMapLongClick(var1);
    if (_onMapLongClick != null) {
      await _onMapLongClick(LatLng(
        await var1.get_latitude(),
        await var1.get_longitude(),
      ));
    }
  }
}
