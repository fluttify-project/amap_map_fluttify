import 'dart:typed_data';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class StaticImageScreen extends StatefulWidget {
  @override
  _StaticImageScreenState createState() => _StaticImageScreenState();
}

class _StaticImageScreenState extends State<StaticImageScreen> {
  Uint8List _imageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('调用高德地图')),
      body: Center(
        child: DecoratedColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                AmapService.instance
                    .fetchStaticMapImage(LatLng(30, 120))
                    .then((value) {
                  setState(() {
                    _imageData = value;
                  });
                });
              },
              child: Text('获取静态图'),
            ),
            if (_imageData != null) Image.memory(_imageData),
          ],
        ),
      ),
    );
  }
}
