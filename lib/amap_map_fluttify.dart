/// 欢迎使用 高德地图 Flutter插件
///
/// amap_map_fluttify基于fluttify编译器生成的一个插件, 其`./lib/src/android`和`./lib/src/ios`目录
/// 下为原生SDK接口对应的dart接口. `./lib/src/facade`目录下的文件为两端接口的抽象层.
///
/// 插件中最重要的两个类为[AmapView]和[AmapController], [AmapView]为显示高德地图的widget,
/// [AmapView]创建完成之后, 会在[onMapCreated]回调中回传[AmapController]的对象, 插件使用者
/// 可以调用[AmapController]上的方法来控制地图行为. 注意使用[setState]之类的方法是不能更新
/// 地图的! 必须通过[AmapController]来控制地图.
///
/// [AmapController]中开放了所有控制地图需要的接口, 具体可以查看[AmapController]内的注释.
library amap_map_fluttify;

export 'src/facade/amap_service.dart';
export 'src/facade/amap_view.widget.dart';
export 'src/facade/enums.dart';
export 'src/facade/models.dart';
