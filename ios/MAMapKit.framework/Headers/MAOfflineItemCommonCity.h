//
//  MAOfflineItemCommonCity.h
//  MapKit_static
//
//  Created by songjian on 14-4-23.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"

#if MA_INCLUDE_OFFLINE

#import "MAOfflineCity.h"

///普通城市
@interface MAOfflineItemCommonCity : MAOfflineCity

///所属省份
@property (nonatomic, weak) MAOfflineItem *province;

@end

#endif
