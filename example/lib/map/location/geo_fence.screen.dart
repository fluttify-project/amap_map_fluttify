import 'dart:math';

import 'package:amap_location_fluttify/amap_location_fluttify.dart';
import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

final random = Random();

class GeoFenceScreen extends StatefulWidget {
  @override
  _GeoFenceScreenState createState() => _GeoFenceScreenState();
}

class _GeoFenceScreenState extends State<GeoFenceScreen> {
  AmapController _controller;
  List<LatLng> _fenceCoordinateList;
  Polygon _fencePolygon;
  String _fenceState;

  @override
  void initState() {
    super.initState();
    _fenceCoordinateList = [];
    _fenceState = '点击地图创建电子围栏';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AmapView(
            zoomLevel: 10,
            showZoomControl: false,
            onMapCreated: (controller) async {
              _controller = controller;
              await _controller.setMapClickedListener(_handleMapClick);
              await _controller.showMyLocation(MyLocationOption(
                strokeColor: Colors.transparent,
                fillColor: Colors.transparent,
              ));
              await Future.delayed(Duration(milliseconds: 1200));
              final coordinate = await _controller.getLocation();
              await _controller.setCameraPosition(
                coordinate: coordinate,
                zoom: 17,
                tilt: 90,
              );
              // 搜索poi
              final poiList =
                  await AmapSearch.instance.searchAround(coordinate);
              await _controller.addMarkers([
                for (final poi in poiList)
                  MarkerOption(
                    latLng: poi.latLng,
                    iconProvider: AssetImage('images/test_icon.png'),
                    title: poi.title,
                    snippet: poi.address,
                    object: '自定义数据: ${poi.poiId}',
                  )
              ]);
            },
          ),
          Positioned(
            left: kSpaceBig,
            right: kSpaceBig,
            bottom: kSpaceBig,
            child: IgnorePointer(
              child: Text(_fenceState, style: context.textTheme.headline5),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        tooltip: '清除电子围栏',
        onPressed: () => _handleClearGeoFence(context),
      ),
    );
  }

  Future<void> _handleMapClick(LatLng latLng) async {
    _fenceCoordinateList.add(latLng);
    final content =
        '${_fenceCoordinateList.length < 3 ? '已点击${_fenceCoordinateList.length}个点, 请继续点击至三个点以上\n' : ''}点击地图坐标: ${latLng.latitude}, ${latLng.longitude}';
    toast(content);
    if (_fenceCoordinateList.isNotEmpty) {
      _fencePolygon?.remove();
      _fencePolygon = await _controller.addPolygon(PolygonOption(
        latLngList: _fenceCoordinateList,
      ));
      AmapLocation.instance
          .addPolygonGeoFence(pointList: _fenceCoordinateList)
          .listen((event) {
        setState(() => _fenceState = '电子围栏事件: ${event.toString()}');
      });
    }
  }

  void _handleClearGeoFence(BuildContext context) {
    _fenceCoordinateList.clear();
    _fencePolygon.remove();
    setState(() {
      _fenceState = '点击地图创建电子围栏';
    });
  }
}
