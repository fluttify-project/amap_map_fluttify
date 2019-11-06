import 'dart:io';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:amap_map_fluttify/src/dart/amap_controller.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/material.dart';

typedef void _OnMapCreated(AmapController controller);

/// 高德地图 Widget
class AmapView extends StatefulWidget {
  const AmapView({
    Key key,
    this.onMapCreated,
  }) : super(key: key);

  final _OnMapCreated onMapCreated;

  @override
  _AmapViewState createState() => _AmapViewState();
}

class _AmapViewState extends State<AmapView> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return com_amap_api_maps_MapView_Android(
        onViewCreated: (controller) async {
          final bundle = await PlatformFactoryAndroid.createandroid_os_Bundle();

          await controller.onCreate(bundle);
          if (widget.onMapCreated != null) {
            _controller = AmapController.android(controller);
            widget.onMapCreated(_controller);
          }
          release(bundle);
        },
      );
    } else if (Platform.isIOS) {
      return MAMapView_iOS(
        onViewCreated: (controller) {
          if (widget.onMapCreated != null) {
            _controller = AmapController.ios(controller);
            widget.onMapCreated(_controller);
          }
        },
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  @override
  void dispose() {
    _controller?.dispose();

    final isCurrentPlugin = (it) => it.tag == 'amap_map_fluttify';
    kNativeObjectPool
      ..where(isCurrentPlugin).forEach(release)
      ..removeWhere(isCurrentPlugin);
    super.dispose();
  }
}
