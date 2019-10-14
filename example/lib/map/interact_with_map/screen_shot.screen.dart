import 'dart:typed_data';

import 'package:flutter/material.dart';

class ScreenShotScreen extends StatefulWidget {
  @override
  _ScreenShotScreenState createState() => _ScreenShotScreenState();
}

class _ScreenShotScreenState extends State<ScreenShotScreen> {
  Uint8List imageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('截图'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
