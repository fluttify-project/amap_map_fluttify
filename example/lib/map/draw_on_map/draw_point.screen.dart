import 'dart:math';

import 'package:amap_map_flutter/amap_map_flutter.dart';
import 'package:amap_map_flutter_example/utils/misc.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class DrawPointScreen extends StatefulWidget {
  DrawPointScreen();

  factory DrawPointScreen.forDesignTime() => DrawPointScreen();

  @override
  DrawPointScreenState createState() => DrawPointScreenState();
}

class DrawPointScreenState extends State<DrawPointScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('绘制点标记'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
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
                    final random = Random();
                    await _controller?.addMarker(
                      LatLng(
                        39.90960 + random.nextDouble(),
                        116.397228 + random.nextDouble(),
                      ),
                      title: '北京',
                      snippet: '描述',
                    );
                    await _controller?.setMarkerClickListener((marker) async {
                      print('Marker点击回调: 标题: ${await marker.getTitle()}');
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

  @override
  void dispose() {
    super.dispose();
  }
}
