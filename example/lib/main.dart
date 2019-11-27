import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'map/map.screen.dart';

Future<void> main() async {
//  await enableFluttifyLog(false); // 关闭log
  await AmapCore.init('7a04506d15fdb7585707f7091d715ef4');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('AMaps examples')),
          backgroundColor: Colors.grey.shade200,
          body: MapDemo(),
        ),
      ),
    );
  }
}
