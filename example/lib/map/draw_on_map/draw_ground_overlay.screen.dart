import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/next_latlng.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

final _networkIcon = Uri.parse(
    'https://w3.hoopchina.com.cn/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg');
final _assetsIcon1 = Uri.parse('images/test_icon.png');
final _assetsIcon2 = Uri.parse('images/arrow.png');

class DrawGroundOverlayScreen extends StatefulWidget {
  DrawGroundOverlayScreen();

  @override
  DrawGroundOverlayScreenState createState() => DrawGroundOverlayScreenState();
}

class DrawGroundOverlayScreenState extends State<DrawGroundOverlayScreen>
    with NextLatLng {
  AmapController _controller;
  GroundOverlay _overlay;

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
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Center(child: Text('添加图片覆盖物')),
                  onTap: () async {
                    _overlay = await _controller?.addGroundOverlay(
                      GroundOverlayOption(
                        northEast: LatLng(40.047815, 116.5742),
                        imageConfiguration:
                            createLocalImageConfiguration(context),
                        imageUri: _assetsIcon1,
                        southWest: LatLng(39.836183, 116.218517),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('删除图片覆盖物')),
                  onTap: () {
                    _overlay?.remove();
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
