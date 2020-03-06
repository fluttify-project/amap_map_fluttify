import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:amap_map_fluttify_example/utils/next_latlng.dart';
import 'package:amap_map_fluttify_example/widgets/setting.widget.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

final _networkIcon = Uri.parse(
    'https://w3.hoopchina.com.cn/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg');
final _assetsIcon1 = Uri.parse('images/test_icon.png');
final _assetsIcon2 = Uri.parse('images/arrow.png');

class DrawPointScreen extends StatefulWidget {
  DrawPointScreen();

  @override
  DrawPointScreenState createState() => DrawPointScreenState();
}

class DrawPointScreenState extends State<DrawPointScreen> with NextLatLng {
  AmapController _controller;
  List<Marker> _markers = [];
  Marker _hiddenMarker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制点标记')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: AmapView(
              zoomLevel: 6,
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
                        latLng: getNextLatLng(),
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
                        width: 100,
                        height: 100,
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
                        latLng: getNextLatLng(),
                        title: '北京',
                        snippet: '描述',
                        iconUri: _assetsIcon1,
                        imageConfig: createLocalImageConfiguration(context),
                        width: 48,
                        height: 48,
                        object: '自定义数据',
                      ),
                    );
                    _markers.add(marker);
                  },
                ),
                ListTile(
                  title: Center(child: Text('移动Marker坐标')),
                  onTap: () async {
                    await _markers?.first?.setCoordinate(getNextLatLng());
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加一个不显示的marker')),
                  onTap: () async {
                    await _hiddenMarker?.remove();
                    _hiddenMarker = await _controller?.addMarker(
                      MarkerOption(
                        latLng: getNextLatLng(),
                        title: '北京',
                        snippet: '描述',
                        iconUri: _assetsIcon1,
                        imageConfig: createLocalImageConfiguration(context),
                        visible: false,
                      ),
                    );
                  },
                ),
                BooleanSetting(
                  head: '是否显示隐藏的Marker',
                  selected: false,
                  onSelected: (visible) async {
                    await _hiddenMarker?.setVisible(visible);
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
                        iconUri: _assetsIcon1,
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
                  onTap: () {
                    _controller?.addMarkers(
                      [
                        for (int i = 0; i < 1000; i++)
                          MarkerOption(
                            latLng: getNextLatLng(),
                            title: '北京',
                            snippet: '描述',
                            iconUri: i % 2 == 0 ? _assetsIcon1 : _assetsIcon2,
                            imageConfig: createLocalImageConfiguration(context),
                            width: 40,
                            height: 40,
                          ),
                      ],
                    )?.then(_markers.addAll);
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
                          '${await marker.title}, ${await marker.snippet}, ${await marker.location}, ${await marker.object}');
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
                ListTile(
                  title: Center(child: Text('将地图缩放至可以显示所有Marker')),
                  onTap: () async {
                    Stream.fromIterable(_markers)
                        .asyncMap((marker) => marker.location)
                        .toList()
                        .then(_controller?.zoomToSpan);
                  },
                ),
                ListTile(
                  title: Center(child: Text('监听Marker弹窗事件')),
                  onTap: () async {
                    await _controller
                        ?.setInfoWindowClickListener((marker) async {
                      toast(
                        '${await marker.title}, ${await marker.location}',
                      );
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('画热力图')),
                  onTap: () async {
                    await _controller?.addHeatmapTile(
                      HeatmapTileOption(latLngList: getNextBatchLatLng(50)),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加平滑移动点')),
                  onTap: () async {
                    final moveMarker = await _controller?.addSmoothMoveMarker(
                      SmoothMoveMarkerOption(
                        path: [for (int i = 0; i < 10; i++) getNextLatLng()],
                        iconUri: _assetsIcon1,
                        imageConfig: createLocalImageConfiguration(context),
                        duration: Duration(seconds: 10),
                      ),
                    );
                    Future.delayed(
                      Duration(seconds: 5),
                      () => moveMarker.stop(),
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
}
