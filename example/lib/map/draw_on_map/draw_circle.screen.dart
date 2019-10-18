import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class DrawCircleScreen extends StatefulWidget {
  DrawCircleScreen();

  factory DrawCircleScreen.forDesignTime() => DrawCircleScreen();

  @override
  _DrawCircleScreenState createState() => _DrawCircleScreenState();
}

class _DrawCircleScreenState extends State<DrawCircleScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制圆')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: AmapView(
              onMapCreated: (controller) async {
                _controller = controller;
                if (await requestPermission()) {
                  await controller.showMyLocation(false);
                }
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Text('添加圆'),
                  onTap: () async {
                    await _controller?.addCircle(
                      LatLng(39.999391, 116.135972),
                      10000,
                      width: 10,
                      strokeColor: Colors.green,
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

  @override
  void dispose() {
    super.dispose();
  }
}
