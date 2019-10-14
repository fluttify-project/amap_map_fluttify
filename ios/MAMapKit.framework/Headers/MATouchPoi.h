//
//  MATouchPoi.h
//  MapKit_static
//
//  Created by songjian on 13-7-17.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

///MATouchPoi 定义
@interface MATouchPoi : NSObject

///名称
@property (nonatomic, copy, readonly) NSString *name;

///经纬度坐标
@property (nonatomic, assign, readonly) CLLocationCoordinate2D coordinate;

///poi的ID
@property (nonatomic, copy, readonly) NSString *uid;

@end
