//
//  MAOverlay.h
//  MAMapKit
//
//  
//  Copyright (c) 2011年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAAnnotation.h"
#import "MAGeometry.h"

///该类是地图覆盖物的基类，所有地图的覆盖物需要继承自此类
@protocol MAOverlay <MAAnnotation>
@required

///返回区域中心坐标
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

///区域外接矩形
@property (nonatomic, readonly) MAMapRect boundingMapRect;

@end
