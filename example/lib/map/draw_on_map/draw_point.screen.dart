import 'dart:math';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
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
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Text('添加Marker'),
                  onTap: () async {
                    await _controller?.addMarker(
                      context,
                      _getNextLatLng(),
                      title: '北京',
                      snippet: '描述',
//                      iconUri: _networkIcon,
                      iconUri: _assetsIcon,
                      draggable: true,
                    );
                  },
                ),
                ListTile(
                  title: Text('Marker添加点击事件'),
                  onTap: () {
                    _controller?.setMarkerClickListener((marker) async {
                      toast('${await marker.title}, ${await marker.snippet}');
                    });
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
