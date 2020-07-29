import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class ProcessedTraceScreen extends StatefulWidget {
  @override
  ProcessedTraceStateScreen createState() => ProcessedTraceStateScreen();
}

class ProcessedTraceStateScreen extends State<ProcessedTraceScreen> {
  final _point1LatController = TextEditingController(text: '30.258083');
  final _point1LngController = TextEditingController(text: '120.171152');
  final _point2LatController = TextEditingController(text: '30.235839');
  final _point2LngController = TextEditingController(text: '120.204454');

  List<LatLng> _result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轨迹纠偏'),
      ),
      body: DecoratedColumn(
        padding: EdgeInsets.all(kSpaceBig),
        children: <Widget>[
          DecoratedRow(
            itemSpacing: kSpaceNormal,
            children: <Widget>[
              Text('起点:'),
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
              Text('终点:'),
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
              await AmapService.queryProcessedTrace(
                1,
                [
                  TraceLocation(
                    latitude: double.parse(_point1LatController.text),
                    longitude: double.parse(_point1LngController.text),
                    speed: 32,
                    bearing: 0,
                    time: 60000,
                  ),
                  TraceLocation(
                    latitude: double.parse(_point2LatController.text),
                    longitude: double.parse(_point2LngController.text),
                    speed: 32,
                    bearing: 0,
                    time: 60000,
                  ),
                ],
                onTraceFinished: (List<LatLng> traceList, int distance) async {
                  setState(() => _result = traceList);
                },
              );
            },
            child: Text('开始纠偏'),
          ),
          Text(_result.join("\n")),
        ],
      ),
    );
  }
}
