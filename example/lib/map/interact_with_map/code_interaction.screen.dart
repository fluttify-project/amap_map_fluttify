import 'package:amap_map_flutter/amap_map_flutter.dart';
import 'package:amap_map_flutter_example/utils/misc.dart';
import 'package:amap_map_flutter_example/widgets/setting.widget.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
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
      appBar: AppBar(
        title: const Text('调用方法交互'),
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
                }
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              children: <Widget>[
                ContinuousSetting(
                  head: '缩放大小',
                  min: 0,
                  max: 20,
                  onChanged: (value) {
                    _controller?.setZoomLevel(value);
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
                        _controller?.setCenterCoordinate(23.16, 113.23);
                        break;
                      case '北京':
                        _controller?.setCenterCoordinate(39.90960, 116.397228);
                        break;
                      case '上海':
                        _controller?.setCenterCoordinate(31.22, 121.48);
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
