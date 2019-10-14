//
//  MAUserLocation.h
//  MAMapKit
//
//  Created by yin cai on 12-1-4.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import "MAAnimatedAnnotation.h"

@class CLLocation;
@class CLHeading;

///定位信息类
@interface MAUserLocation : MAAnimatedAnnotation

///位置更新状态，如果正在更新位置信息，则该值为YES
@property (readonly, nonatomic, getter = isUpdating) BOOL updating;

///位置信息，如果MAMapView的showsUserLocation为NO，或者尚未定位成功，则该值为nil
@property (readonly, nonatomic, strong) CLLocation *location;

///heading信息
@property (readonly, nonatomic, strong) CLHeading *heading;

@end
