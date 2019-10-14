//
//  MAOfflineProvince.h
//  MapKit_static
//
//  Created by songjian on 14-4-24.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"

#if MA_INCLUDE_OFFLINE

#import "MAOfflineItem.h"
#import "MAOfflineItemCommonCity.h"

///离线地图，省地图信息
@interface MAOfflineProvince : MAOfflineItem

///包含的城市数组(都是MAOfflineItemCommonCity类型)
@property (nonatomic, strong, readonly) NSArray *cities;

@end

#endif
