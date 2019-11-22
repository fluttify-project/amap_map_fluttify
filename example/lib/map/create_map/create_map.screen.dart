import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:amap_map_fluttify_example/utils/utils.export.dart';
import 'package:amap_map_fluttify_example/widgets/setting.widget.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class CreateMapScreen extends StatefulWidget {
  @override
  _CreateMapScreenState createState() => _CreateMapScreenState();
}

class _CreateMapScreenState extends State<CreateMapScreen> {
  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义地图')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: AmapView(
              showZoomControl: false,
              centerCoordinate: LatLng(23.170117, 113.438926),
              maskDelay: Duration(milliseconds: 500),
              onMapCreated: (controller) async {
                _controller = controller;
                if (await requestPermission()) {
                  await controller.showMyLocation(false);
                }
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              divider: kDividerZero,
              children: <Widget>[
                BooleanSetting(
                  head: '是否显示定位',
                  onSelected: (value) {
                    _controller?.showMyLocation(value);
                  },
                ),
                ListTile(
                  title: Center(child: Text('获取当前位置经纬度')),
                  onTap: () async {
                    final latLng = await _controller?.getLocation();
                    toast('当前经纬度: ${latLng.toString()}');
                  },
                ),
                BooleanSetting(
                  head: '是否显示室内地图',
                  onSelected: (value) {
                    _controller?.showIndoorMap(value);
                  },
                ),
                DiscreteSetting(
                  head: '切换地图图层',
                  options: ['正常视图', '卫星视图', '黑夜视图', '导航视图', '公交视图'],
                  onSelected: (value) {
                    switch (value) {
                      case '正常视图':
                        _controller?.setMapType(MapType.Standard);
                        break;
                      case '卫星视图':
                        _controller?.setMapType(MapType.Satellite);
                        break;
                      case '黑夜视图':
                        _controller?.setMapType(MapType.Night);
                        break;
                      case '导航视图':
                        _controller?.setMapType(MapType.Navi);
                        break;
                      case '公交视图':
                        _controller?.setMapType(MapType.Bus);
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '切换语言',
                  options: ['中文', '英文'],
                  onSelected: (value) {
                    switch (value) {
                      case '中文':
                        _controller?.setMapLanguage(Language.Chinese);
                        break;
                      case '英文':
                        _controller?.setMapLanguage(Language.English);
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈边框颜色',
                  options: ['红色', '绿色', '蓝色'],
                  onSelected: (value) {
                    switch (value) {
                      case '红色':
                        _controller?.showMyLocation(
                          true,
                          strokeColor: Colors.red,
                          strokeWidth: 2,
                        );
                        break;
                      case '绿色':
                        _controller?.showMyLocation(
                          true,
                          strokeColor: Colors.green,
                          strokeWidth: 2,
                        );
                        break;
                      case '蓝色':
                        _controller?.showMyLocation(
                          true,
                          strokeColor: Colors.blue,
                          strokeWidth: 2,
                        );
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈填充颜色',
                  options: ['红色', '绿色', '蓝色'],
                  onSelected: (value) {
                    switch (value) {
                      case '红色':
                        _controller?.showMyLocation(
                          true,
                          fillColor: Colors.red,
                          strokeWidth: 2,
                        );
                        break;
                      case '绿色':
                        _controller?.showMyLocation(
                          true,
                          fillColor: Colors.green,
                          strokeWidth: 2,
                        );
                        break;
                      case '蓝色':
                        _controller?.showMyLocation(
                          true,
                          fillColor: Colors.blue,
                          strokeWidth: 2,
                        );
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈边框宽度',
                  options: ['2', '4', '8'],
                  onSelected: (value) {
                    switch (value) {
                      case '2':
                        _controller?.showMyLocation(true, strokeWidth: 2);
                        break;
                      case '4':
                        _controller?.showMyLocation(true, strokeWidth: 4);
                        break;
                      case '8':
                        _controller?.showMyLocation(true, strokeWidth: 8);
                        break;
                    }
                  },
                ),
                BooleanSetting(
                  head: '是否显示路况信息',
                  onSelected: (value) {
                    _controller?.showTraffic(value);
                  },
                ),
                ListTile(
                  title: Center(child: Text('获取地图中心点')),
                  onTap: () async {
                    final center = await _controller?.getCenterCoordinate();
                    toast(
                        'center: lat: ${center.latitude}, lng: ${center.longitude}');
                  },
                ),
                ListTile(
                  title: Center(child: Text('监听地图移动')),
                  onTap: () {
                    _controller?.setMapDragListener((drag) {
                      toast('移动: $drag');
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加点击地图监听')),
                  onTap: () {
                    _controller?.setMapClickListener(
                      (latLng) {
                        toast(
                          '点击: lat: ${latLng.latitude}, lng: ${latLng.longitude}',
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
