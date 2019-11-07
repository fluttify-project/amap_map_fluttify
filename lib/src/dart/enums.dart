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
