//
//  MATraceLocation.h
//  MAMapKit
//
//  Created by shaobin on 16/9/1.
//  Copyright © 2016年 Amap. All rights reserved.
//



#import "MAConfig.h"

#if MA_INCLUDE_TRACE_CORRECT

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

///返回轨迹点定义
@interface MATracePoint : NSObject<NSCoding>

///纬度坐标
@property (nonatomic, assign) CLLocationDegrees latitude;
///经度坐标
@property (nonatomic, assign) CLLocationDegrees longitude;

@end

///传入轨迹点定义
@interface MATraceLocation : NSObject

///经纬度坐标
@property (nonatomic, assign) CLLocationCoordinate2D loc;
///角度, 标识移动方向，单位度
@property (nonatomic, assign) double angle;
///速度，单位km/h
@property (nonatomic, assign) double speed;
///时间，单位毫秒
@property (nonatomic, assign) double time;

@end

#endif
