import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

//const beijing = LatLng(39.90960, 116.397228);
//const shanghai = LatLng(31.22, 121.48);
//const guangzhou = LatLng(23.16, 113.23);

class CodeInteractionScreen extends StatefulWidget {
  CodeInteractionScreen();

  factory CodeInteractionScreen.forDesignTime() => CodeInteractionScreen();

  @override
  _CodeInteractionScreenState createState() => _CodeInteractionScreenState();
}

class _CodeInteractionScreenState extends State<CodeInteractionScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('调用方法交互')),
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
              divider: kDividerZero,
              children: <Widget>[
                ContinuousSetting(
                  head: '缩放大小',
                  min: 0,
                  max: 20,
                  onChanged: (value) {
                    _controller?.setZoomLevel(value);
                  },
                ),
                ContinuousSetting(
                  head: '设置地图朝向',
                  min: 0,
                  max: 360,
                  onChanged: (value) {
                    debugPrint('bearing value: $value');
                    _controller?.setBearing(value);
                  },
                ),
                ContinuousSetting(
                  head: '设置地图倾斜度',
                  min: 0,
                  max: 90,
                  onChanged: (value) {
                    _controller?.setTilt(value);
                  },
                ),
                DiscreteSetting(
                  head: '放大/缩小一个等级',
                  options: ['放大', '缩小'],
                  onSelected: (value) {
                    switch (value) {
                      case '放大':
                        _controller?.zoomIn();
                        break;
                      case '缩小':
                        _controller?.zoomOut();
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '设置地图中心点',
                  options: ['广州', '北京', '上海'],
                  onSelected: (value) {
                    switch (value) {
                      case '广州':
                        _controller?.setCenterCoordinate(
                          LatLng(23.16, 113.23),
                          animated: false,
                        );
                        break;
                      case '北京':
                        _controller?.setCenterCoordinate(
                          LatLng(39.90960, 116.397228),
                          animated: true,
                        );
                        break;
                      case '上海':
                        _controller?.setCenterCoordinate(LatLng(31.22, 121.48));
                        break;
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

  @override
  void dispose() {
    super.dispose();
  }
}
