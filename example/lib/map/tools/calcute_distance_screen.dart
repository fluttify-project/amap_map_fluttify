import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class CalculateDistanceScreen extends StatefulWidget {
  @override
  CalculateDistanceStateScreen createState() => CalculateDistanceStateScreen();
}

class CalculateDistanceStateScreen extends State<CalculateDistanceScreen> {
  final _point1LatController = TextEditingController(text: '29');
  final _point1LngController = TextEditingController(text: '119');
  final _point2LatController = TextEditingController(text: '30');
  final _point2LngController = TextEditingController(text: '119');

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('距离计算'),
      ),
      body: DecoratedColumn(
        padding: EdgeInsets.all(kSpaceBig),
        children: <Widget>[
          DecoratedRow(
            itemSpacing: kSpaceNormal,
            children: <Widget>[
              Text('点1:'),
              Flexible(
                child: TextFormField(
                  controller: _point1LatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: '输入点1纬度'),
                ),
              ),
              Flexible(
                child: TextFormField(
                  controller: _point1LngController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: '输入点1经度'),
                ),
              ),
            ],
          ),
          DecoratedRow(
            itemSpacing: kSpaceNormal,
            children: <Widget>[
              Text('点2:'),
              Flexible(
                child: TextFormField(
                  controller: _point2LatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: '输入点2纬度'),
                ),
              ),
              Flexible(
                child: TextFormField(
                  controller: _point2LngController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: '输入点2经度'),
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () async {
              final result = await AmapService.calculateDistance(
                LatLng(
                  double.parse(_point1LatController.text),
                  double.parse(_point1LngController.text),
                ),
                LatLng(
                  double.parse(_point2LatController.text),
                  double.parse(_point2LngController.text),
                ),
              );

              setState(() => _result = result);
            },
            child: Text('计算'),
          ),
          Text(_result.toString() + '米'),
        ],
      ),
    );
  }
}
