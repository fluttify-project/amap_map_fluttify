import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:amap_map_fluttify_example/widgets/setting.widget.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class ControlInteractionScreen extends StatefulWidget {
  ControlInteractionScreen();

  factory ControlInteractionScreen.forDesignTime() =>
      ControlInteractionScreen();

  @override
  _ControlInteractionScreenState createState() =>
      _ControlInteractionScreenState();
}

class _ControlInteractionScreenState extends State<ControlInteractionScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('控件交互'),
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
                BooleanSetting(
                  head: '是否显示缩放按钮',
                  onSelected: (value) {
                    _controller?.showZoomControl(value);
                  },
                ),
                BooleanSetting(
                  head: '是否显示指南针',
                  onSelected: (value) {
                    _controller?.showCompass(value);
                  },
                ),
                BooleanSetting(
                  head: '是否显示定位按钮',
                  onSelected: (value) {
                    _controller?.showLocateControl(value);
                  },
                ),
                BooleanSetting(
                  head: '是否显示比例尺',
                  onSelected: (value) {
                    _controller?.showScaleControl(value);
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
