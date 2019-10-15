import 'dart:math';
import 'dart:typed_data';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/misc.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DrawPointScreen extends StatefulWidget {
  DrawPointScreen();

  @override
  DrawPointScreenState createState() => DrawPointScreenState();
}

class DrawPointScreenState extends State<DrawPointScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制点标记')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: AmapView(
              onMapCreated: (controller) async {
                _controller = controller;
                if (await requestPermission()) {
                  await controller.showMyLocation(false);
                  await controller.setZoomLevel(6);
                }
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Text('添加Marker'),
                  onTap: () async {
                    await _controller?.addMarker(
                      context,
                      _getNextLatLng(),
                      title: '北京',
                      snippet: '描述',
                      iconUri: Uri.parse(
                          'https://w3.hoopchina.com.cn/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg'),
//                      iconUri: Uri.parse('images/test_icon.png'),
                    );
                    _controller?.setMarkerClickListener((marker) async {
                      print('Marker点击回调: 标题: ${await marker.title}');
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  LatLng _getNextLatLng() {
    final random = Random();
    return LatLng(
      39.90960 + random.nextDouble(),
      116.397228 + random.nextDouble(),
    );
  }

  /// asset图片
  Future<Uint8List> _getAssetImageData() async {
    final byteData = await rootBundle.load('images/error_placeholder.png');
    return byteData.buffer.asUint8List();
  }

  /// 网络图片
  Future<Uint8List> _getNetworkImageData() async {
    return Dio(BaseOptions(
      baseUrl: 'https://w3.hoopchina.com.cn',
      responseType: ResponseType.bytes,
    )).get('/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg').then((it) {
      print(it.data);
      return it;
    }).then((it) => Uint8List.fromList(it.data));
  }

  // todo 未完成
  Future<Uint8List> _getWidgetImageData(BuildContext context) async {
    RepaintBoundary(child: Text('hahahah'));
    final RenderRepaintBoundary boundary = context.findRenderObject();
    return boundary
        .toImage()
        .then((it) => it.toByteData())
        .then((it) => it.buffer.asUint8List());
  }
}
