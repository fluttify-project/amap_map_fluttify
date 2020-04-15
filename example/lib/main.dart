import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'map/map.screen.dart';

Future<void> main() async {
  runApp(MyApp());

  await enableFluttifyLog(false);
  await AmapService.init(
    iosKey: '7a04506d15fdb7585707f7091d715ef4',
    androidKey: '7c9daac55e90a439f7b4304b465297fa',
  );
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
