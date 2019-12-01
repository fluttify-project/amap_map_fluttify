import 'dart:math';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:amap_map_fluttify_example/widgets/setting.widget.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

final _networkIcon = Uri.parse(
    'https://w3.hoopchina.com.cn/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg');
final _assetsIcon = Uri.parse('images/test_icon.png');

class DrawPointScreen extends StatefulWidget {
  DrawPointScreen();

  @override
  DrawPointScreenState createState() => DrawPointScreenState();
}

class DrawPointScreenState extends State<DrawPointScreen> {
  AmapController _controller;
  List<Marker> _markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制点标记')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: AmapView(
              onMapCreated: (controller) async {
                _controller = controller;
                if (await requestPermission()) {
                  await controller.showMyLocation(false);
                  await controller.setZoomLevel(6);
                }
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Center(child: Text('添加Widget Marker')),
                  onTap: () async {
                    final marker = await _controller?.addMarker(
                      MarkerOption(
                        latLng: _getNextLatLng(),
                        widget: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('使用Widget作为Marker'),
                            FlutterLogo(size: 80),
                          ],
                        ),
                        imageConfig: createLocalImageConfiguration(context),
                        title: '北京',
                        snippet: '描述',
                      ),
                    );
                    _markers.add(marker);
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加Marker')),
                  onTap: () async {
                    final marker = await _controller?.addMarker(
                      MarkerOption(
                        latLng: _getNextLatLng(),
                        title: '北京',
                        snippet: '描述',
                        infoWindowEnabled: false,
                      ),
                    );
                    _markers.add(marker);
                  },
                ),
                ListTile(
                  title: Center(child: Text('调用方法开启弹窗')),
                  onTap: () async {
                    if (_markers.isNotEmpty) {
                      final marker = _markers[0];
                      marker.showInfoWindow();
                    }
                  },
                ),
                ListTile(
                  title: Center(child: Text('调用方法关闭弹窗')),
                  onTap: () async {
                    if (_markers.isNotEmpty) {
                      final marker = _markers[0];
                      marker.hideInfoWindow();
                    }
                  },
                ),
                ContinuousSetting(
                  head: '添加旋转角度的Marker',
                  onChanged: (value) async {
                    await _controller?.clearMarkers();
                    final marker = await _controller?.addMarker(
                      MarkerOption(
                        latLng: LatLng(39.90960, 116.397228),
                        title: '北京',
                        snippet: '描述',
                        iconUri: _assetsIcon,
                        draggable: true,
                        imageConfig: createLocalImageConfiguration(context),
                        rotateAngle: 360 * value,
                        anchorU: 0,
                        anchorV: 0,
                      ),
                    );
                    _markers.add(marker);
                  },
                ),
                ListTile(
                  title: Center(child: Text('批量添加Marker')),
                  onTap: () async {
                    final markers = await _controller?.addMarkers(
                      [
                        for (int i = 0; i < 10; i++)
                          MarkerOption(
                            latLng: _getNextLatLng(),
                            title: '北京',
                            snippet: '描述',
                            iconUri: _assetsIcon,
                            draggable: true,
                            imageConfig: createLocalImageConfiguration(context),
                          ),
                      ],
                    );
                    _markers.addAll(markers);
                  },
                ),
                ListTile(
                  title: Center(child: Text('删除Marker')),
                  onTap: () async {
                    if (_markers.isNotEmpty) {
                      await _markers[0].remove();
                      _markers.removeAt(0);
                    }
                  },
                ),
                ListTile(
                  title: Center(child: Text('清除所有Marker')),
                  onTap: () async {
                    await _controller.clearMarkers();
                  },
                ),
                ListTile(
                  title: Center(child: Text('Marker添加点击事件')),
                  onTap: () {
                    _controller?.setMarkerClickedListener((marker) async {
                      toast(
                          '${await marker.title}, ${await marker.snippet}, ${await marker.location}');
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('Marker添加拖动事件')),
                  onTap: () {
                    _controller?.setMarkerDragListener(
                      onMarkerDragEnd: (marker) async {
                        toast(
                          '${await marker.title}, ${await marker.location}',
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  LatLng _getNextLatLng() {
    final random = Random();
    return LatLng(
      39.90960 + random.nextDouble(),
      116.397228 + random.nextDouble(),
    );
  }
}
