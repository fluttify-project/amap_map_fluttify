import 'package:amap_map_fluttify_example/widgets/dimens.dart';
import 'package:flutter/material.dart';

class CoordinateTransformationScreen extends StatefulWidget {
  @override
  _CoordinateTransformationStateScreen createState() =>
      _CoordinateTransformationStateScreen();
}

class _CoordinateTransformationStateScreen
    extends State<CoordinateTransformationScreen> {
  final _lat = 39.914266;
  final _lon = 116.403988;

  final _latController = TextEditingController(text: "39.914266");
  final _lngController = TextEditingController(text: "116.403988");

  @override
  void initState() {
    super.initState();
    _latController.addListener(update);
    _lngController.addListener(update);
  }

  void update() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('坐标转换'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SPACE_NORMAL,
            TextFormField(
              controller: _latController,
              decoration: InputDecoration(
                labelText: "纬度 latitude",
                border: OutlineInputBorder(),
              ),
              enabled: false,
            ),
            SPACE_NORMAL,
            TextFormField(
              controller: _lngController,
              decoration: InputDecoration(
                labelText: "经度 longitude",
                border: OutlineInputBorder(),
              ),
              enabled: false,
            ),
            SPACE_NORMAL,
          ],
        ),
      ),
    );
  }
}
