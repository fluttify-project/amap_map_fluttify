import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/material.dart';

class OfflineManagerScreen extends StatefulWidget {
  @override
  _OfflineManagerScreenState createState() => _OfflineManagerScreenState();
}

class _OfflineManagerScreenState extends State<OfflineManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('打开离线地图管理')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            AmapService.openOfflineMapManager();
          },
          child: Text('离线地图管理'),
        ),
      ),
    );
  }
}
