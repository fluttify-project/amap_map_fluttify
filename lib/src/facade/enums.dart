/// 地图类型
enum MapType {
  /// 标准视图
  Standard,

  /// 卫星视图
  Satellite,

  /// 黑夜视图
  Night,

  /// 导航视图
  Navi,

  /// 公交视图
  Bus,
}

/// 地图语言
enum Language {
  /// 中文
  Chinese,

  /// 英文
  English,
}

/// 坐标类型
enum CoordType {
  GPS,
  Google,
  MapBar,
  Baidu,
  MapABC,
  SosoMap,
  Aliyun,
}

/// 线段末端处样式
enum LineCapType {
  /// 普通头
  Butt,

  /// 扩展头
  Square,

  /// 箭头
  Arrow,

  /// 圆形头
  Round,
}

/// 线段连接处样式
enum LineJoinType {
  /// 斜面连接点
  Bevel,

  /// 斜接连接点
  Miter,

  /// 圆角连接点
  Round,
}

/// 虚线样式
enum DashType {
  /// 方块样式
  Square,

  /// 圆点样式
  Circle,
}

enum MyLocationType {
  /// 只定位
  Show,

  /// 定位一次, 并移动到中心
  Locate,

  /// 跟随
  Follow,

  /// 方向跟随
  Rotate,
}

enum RideType {
  /// 电动车
  elebike,

  /// 自行车
  bike,
}
