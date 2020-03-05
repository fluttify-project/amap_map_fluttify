import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:amap_map_fluttify_example/utils/next_latlng.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class DrawCircleScreen extends StatefulWidget {
  DrawCircleScreen();

  factory DrawCircleScreen.forDesignTime() => DrawCircleScreen();

  @override
  _DrawCircleScreenState createState() => _DrawCircleScreenState();
}

class _DrawCircleScreenState extends State<DrawCircleScreen> with NextLatLng {
  AmapController _controller;
  List<Circle> _circleList = [];

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
                  title: Center(child: Text('添加圆')),
                  onTap: () async {
                    final circle = await _controller?.addCircle(CircleOption(
                      center: LatLng(39.999391, 116.135972),
                      radius: 10000,
                      width: 10,
                      strokeColor: Colors.green,
                    ));
                    _circleList.add(circle);
                  },
                ),
                ListTile(
                  title: Center(child: Text('删除圆')),
                  onTap: () async {
                    if (_circleList.isNotEmpty) {
                      await _circleList.first.remove();
                      _circleList.removeAt(0);
                    }
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
