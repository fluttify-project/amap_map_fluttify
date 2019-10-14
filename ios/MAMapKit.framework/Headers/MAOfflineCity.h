//
//  MAOfflineCity.h
//
//  Copyright (c) 2013年 Amap. All rights reserved.
//

#import "MAConfig.h"

#if MA_INCLUDE_OFFLINE

#import <Foundation/Foundation.h>
#import "MAOfflineItem.h"

///离线地图城市状态，deprecated
typedef enum{
    MAOfflineCityStatusNone      __attribute__((deprecated("use MAOfflineItemStatusNone instead")))         = MAOfflineItemStatusNone,      ///< 不存在,deprecated
    MAOfflineCityStatusCached    __attribute__((deprecated("use MAOfflineItemStatusCached instead")))       = MAOfflineItemStatusCached,    ///< 缓存状态,deprecated
    MAOfflineCityStatusInstalled __attribute__((deprecated("use MAOfflineItemStatusInstalled instead")))    = MAOfflineItemStatusInstalled, ///< 已安装,deprecated
    MAOfflineCityStatusExpired   __attribute__((deprecated("use MAOfflineItemStatusExpired instead")))      = MAOfflineItemStatusExpired    ///< 已过期,deprecated
}MAOfflineCityStatus;

///离线地图，城市信息
@interface MAOfflineCity : MAOfflineItem

///城市编码
@property (nonatomic, copy, readonly) NSString *cityCode;

///城市名称,deprecated,请使用name
@property (nonatomic, copy, readonly) NSString *cityName __attribute__((deprecated("use name instead")));

///下载地址,deprecated
@property (nonatomic, copy, readonly) NSString *urlString __attribute__((deprecated("Not supported in future version")));

///离线数据状态,deprecated,请使用itemStatus
@property (nonatomic, assign, readonly) MAOfflineCityStatus status __attribute__((deprecated("use itemStatus instead")));

@end

#endif
