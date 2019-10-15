import 'dart:io';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify/src/android/android.export.dart';
import 'package:amap_map_fluttify/src/dart/amap_controller.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.dart';
import 'package:flutter/material.dart';

typedef void OnMapCreated(AmapController controller);

class AmapView extends StatefulWidget {
  const AmapView({
    Key key,
    this.onMapCreated,
  }) : super(key: key);

  final OnMapCreated onMapCreated;

  @override
  _AmapViewState createState() => _AmapViewState();
}

class _AmapViewState extends State<AmapView> {
  int _iosId;
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return com_amap_api_maps_MapView_Android(
        onViewCreated: (controller) async {
          await controller
              .onCreate(await ObjectFactory_Android.createandroid_os_Bundle());
          if (widget.onMapCreated != null) {
            widget.onMapCreated(AmapController.android(controller));
          }
        },
      );
    } else if (Platform.isIOS) {
      return MAMapView_iOS(
        onViewCreated: (controller) {
          _iosId = controller.refId;
          if (widget.onMapCreated != null) {
            widget.onMapCreated(AmapController.ios(controller));
          }
        },
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }
}
