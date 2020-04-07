import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

import 'create_map/create_map.screen.dart';
import 'create_map/multi_map.screen.dart';
import 'draw_on_map/draw_circle.screen.dart';
import 'draw_on_map/draw_point.screen.dart';
import 'draw_on_map/draw_polygon.screen.dart';
import 'draw_on_map/draw_polyline.screen.dart';
import 'interact_with_map/code_interaction.screen.dart';
import 'interact_with_map/control_interaction.screen.dart';
import 'interact_with_map/gesture_interaction.screen.dart';
import 'interact_with_map/screen_shot_screen.dart';
import 'tools/calcute_distance_screen.dart';
import 'tools/coordinate_transformation_screen.dart';
import 'tools/launch_amap_screen.dart';
import 'tools/offline_manager_screen.dart';
import 'tools/processed_trace.screen.dart';

class MapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FunctionGroup(
          headLabel: '创建地图',
          children: <Widget>[
            FunctionItem(
              label: '显示地图',
              sublabel: 'CreateMapScreen',
              target: CreateMapScreen(),
            ),
            FunctionItem(
              label: '显示多地图',
              sublabel: 'MultiMapScreen',
              target: MultiMapScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '与地图交互',
          children: <Widget>[
            FunctionItem(
              label: '控件交互',
              sublabel: 'ControlInteractionScreen',
              target: ControlInteractionScreen(),
            ),
            FunctionItem(
              label: '手势交互',
              sublabel: 'GestureInteractionScreen',
              target: GestureInteractionScreen(),
            ),
            FunctionItem(
              label: '调用方法交互',
              sublabel: 'CodeInteractionScreen',
              target: CodeInteractionScreen(),
            ),
            FunctionItem(
              label: '截图',
              sublabel: 'ScreenShotScreen',
              target: ScreenShotScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '在地图上绘制',
          children: <Widget>[
            FunctionItem(
              label: '绘制点标记',
              sublabel: 'DrawPointScreen',
              target: DrawPointScreen(),
            ),
            FunctionItem(
              label: '绘制线',
              sublabel: 'DrawPolylineScreen',
              target: DrawPolylineScreen(),
            ),
            FunctionItem(
              label: '绘制圆',
              sublabel: 'DrawCircleScreen',
              target: DrawCircleScreen(),
            ),
            FunctionItem(
              label: '绘制多边形',
              sublabel: 'DrawPolygonScreen',
              target: DrawPolygonScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: "工具",
          children: <Widget>[
            FunctionItem(
              label: "坐标转换",
              sublabel: "CoordinateTransformationScreen",
              target: CoordinateTransformationScreen(),
            ),
            FunctionItem(
              label: "两点间距离计算",
              sublabel: "CalculateDistanceScreen",
              target: CalculateDistanceScreen(),
            ),
            FunctionItem(
              label: "调用高德地图",
              sublabel: "LaunchAmapScreen",
              target: LaunchAmapScreen(),
            ),
            FunctionItem(
              label: "轨迹纠偏",
              sublabel: "ProcessedTraceScreen",
              target: ProcessedTraceScreen(),
            ),
            FunctionItem(
              label: "离线地图",
              sublabel: "OfflineManagerScreen",
              target: OfflineManagerScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
