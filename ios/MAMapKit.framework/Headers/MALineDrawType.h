//
//  MALineDrawType.h
//  MapKit_static
//
//  Created by yi chen on 14-7-30.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"

#ifndef MapKit_static_MALineDrawType_h
#define MapKit_static_MALineDrawType_h

enum MALineJoinType
{
    kMALineJoinBevel,   ///< 斜面连接点
    kMALineJoinMiter,   ///< 斜接连接点
    kMALineJoinRound    ///< 圆角连接点
};
typedef enum MALineJoinType MALineJoinType;

enum MALineCapType
{
    kMALineCapButt,     ///< 普通头
    kMALineCapSquare,   ///< 扩展头
    kMALineCapArrow,    ///< 箭头
    kMALineCapRound     ///< 圆形头
};
typedef enum MALineCapType MALineCapType;

#endif
