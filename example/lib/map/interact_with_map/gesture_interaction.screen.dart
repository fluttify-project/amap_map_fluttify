import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

class GestureInteractionScreen extends StatefulWidget {
  GestureInteractionScreen();

  factory GestureInteractionScreen.forDesignTime() =>
      GestureInteractionScreen();

  @override
  _GestureInteractionScreenState createState() =>
      _GestureInteractionScreenState();
}

class _GestureInteractionScreenState extends State<GestureInteractionScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('手势交互')),
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
                BooleanSetting(
                  head: '是否使能缩放手势',
                  onSelected: (value) {
                    _controller?.setZoomGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  head: '是否使能滑动手势',
                  onSelected: (value) {
                    _controller?.setScrollGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  head: '是否使能旋转手势',
                  onSelected: (value) {
                    _controller?.setRotateGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  head: '是否使能倾斜手势',
                  onSelected: (value) {
                    _controller?.setTiltGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  head: '是否使能所有手势',
                  onSelected: (value) {
                    _controller?.setAllGesturesEnabled(value);
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
