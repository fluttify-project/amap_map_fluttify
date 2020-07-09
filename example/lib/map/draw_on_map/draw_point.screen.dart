import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:amap_map_fluttify_example/utils/next_latlng.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

final _networkIcon = NetworkImage(
    'https://w3.hoopchina.com.cn/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg');
final _assetsIcon1 = AssetImage('images/test_icon.png');
final _assetsIcon2 = AssetImage('images/arrow.png');

class DrawPointScreen extends StatefulWidget {
  DrawPointScreen();

  @override
  DrawPointScreenState createState() => DrawPointScreenState();
}

class DrawPointScreenState extends State<DrawPointScreen> with NextLatLng {
  AmapController _controller;
  List<Marker> _markers = [];
  Marker _hiddenMarker;
  SmoothMoveMarker _moveMarker;
  MultiPointOverlay _multiPointOverlay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制点标记')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Stack(
              children: <Widget>[
                AmapView(
                  zoomLevel: 6,
//                  markers: [
//                    MarkerOption(
//                      latLng: getNextLatLng(),
////                  iconUri: _assetsIcon1,
////                  imageConfig: createLocalImageConfiguration(context),
//                    ),
//                  ],
                  onMapCreated: (controller) async {
                    _controller = controller;
                    if (await requestPermission()) {
                      await controller.setZoomLevel(6);
                    }
                  },
                ),
                Container(
                  height: 100,
                  color: Colors.black26,
                ),
              ],
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
                    final marker = await _controller?.addMarkers(
                      [
                        for (int i = 0; i < 100; i++)
                          MarkerOption(
                            latLng: getNextLatLng(),
                            widget: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('使用Widget作为Marker: $i'),
                                Image.asset('images/test_icon.png'),
                              ],
                            ),
                            title: '北京',
                            snippet: '描述',
                          )
                      ],
                    );
                    _markers.addAll(marker);
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加Marker')),
                  onTap: () async {
                    final marker = await _controller?.addMarker(
                      MarkerOption(
                        latLng: getNextLatLng(),
                        title: '北京${random.nextDouble()}',
                        snippet: '描述${random.nextDouble()}',
                        iconProvider: _assetsIcon1,
                        infoWindowEnabled: true,
                        object: '自定义数据${random.nextDouble()}',
                      ),
                    );
                    await _controller?.setMarkerClickedListener((marker) async {
                      await _controller.showCustomInfoWindow(
                        marker,
                        Container(
                          width: 128,
                          height: 222,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(await marker.title),
                        ),
                      );
                    });
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
                        iconProvider: _assetsIcon1,
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
                    await _controller?.clearMarkers(_markers);
                    final marker = await _controller?.addMarker(
                      MarkerOption(
                        latLng: LatLng(39.90960, 116.397228),
                        title: '北京',
                        snippet: '描述',
                        iconProvider: _assetsIcon1,
                        draggable: true,
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
                        for (int i = 0; i < 100; i++)
                          MarkerOption(
                            latLng: getNextLatLng(),
//                            title: '北京$i',
//                            snippet: '描述$i',
                            iconProvider:
                                i % 2 == 0 ? _assetsIcon1 : _assetsIcon2,
                            infoWindowEnabled: false,
//                            rotateAngle: 90,
                            object: 'Marker_$i',
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
                    await _controller.clearMarkers(_markers);
                  },
                ),
                ListTile(
                  title: Center(child: Text('Marker添加点击事件')),
                  onTap: () {
                    _controller?.setMarkerClickedListener((marker) async {
                      marker.setIcon(
                        _assetsIcon2,
                        createLocalImageConfiguration(context),
                      );
                      return true;
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
                        .then((boundary) {
                      debugPrint('boundary: $boundary');
                      return _controller?.zoomToSpan(
                        boundary,
                        padding: EdgeInsets.only(
                          top: 100,
                        ),
                      );
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('监听Marker弹窗事件')),
                  onTap: () async {
                    await _controller
                        ?.setInfoWindowClickListener((marker) async {
                      toast('${await marker.title}, ${await marker.location}');
                      return false;
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('画热力图')),
                  onTap: () async {
                    await _controller?.addHeatmapTileOverlay(
                      HeatmapTileOption(latLngList: getNextBatchLatLng(50)),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加在线瓦片图')),
                  onTap: () async {
                    await _controller?.addUrlTileOverlay(
                      UrlTileOption(
                        width: 256,
                        height: 256,
                        urlTemplate:
//                        'http://tile.opencyclemap.org/cycle/{scale}/{x}/{y}.png', // 由于没有api key, 这个链接无法显示瓦片
                            'https://c2.hoopchina.com.cn/uploads/star/event/images/200709/bmiddle-34faa76c78ff3ba7a67282d64ff3c081135d4743.jpg?x-oss-process=image/resize,w_780,312',
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加平滑移动点')),
                  onTap: () async {
                    _moveMarker = await _controller?.addSmoothMoveMarker(
                      SmoothMoveMarkerOption(
                        path: [for (int i = 0; i < 10; i++) getNextLatLng()],
                        iconProvider: _assetsIcon1,
                        duration: Duration(seconds: 10),
                      ),
                    );
                    Future.delayed(
                      Duration(seconds: 5),
                      () => _moveMarker.stop(),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('进入二级地图页面')),
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DrawPointScreen()),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加海量点')),
                  onTap: () async {
                    _multiPointOverlay =
                        await _controller?.addMultiPointOverlay(
                      MultiPointOption(
                        pointList: [
                          for (int i = 0; i < 10000; i++)
                            PointOption(
                              latLng: getNextLatLng(),
                              id: i.toString(),
                              title: 'Point$i',
                              snippet: 'Snippet$i',
                              object: 'Object$i',
                            )
                        ],
                        iconProvider: _assetsIcon1,
                      ),
                    );
                    await _controller?.setMultiPointClickedListener(
                      (id, title, snippet, object) async {
                        toast(
                          'id: $id, title: $title, snippet: $snippet, object: $object',
                        );
                      },
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('删除海量点')),
                  onTap: () async {
                    await _multiPointOverlay?.remove();
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
