import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class LaunchAmapScreen extends StatefulWidget {
  @override
  _LaunchAmapScreenState createState() => _LaunchAmapScreenState();
}

class _LaunchAmapScreenState extends State<LaunchAmapScreen> {
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
                AmapService.navigateDrive(LatLng(36.547901, 104.258354));
              },
              child: Text('高德地图驾车导航'),
            ),
            RaisedButton(
              onPressed: () {
                AmapService.navigateRide(LatLng(36.547901, 104.258354));
              },
              child: Text('高德地图骑行导航'),
            ),
          ],
        ),
      ),
    );
  }
}
