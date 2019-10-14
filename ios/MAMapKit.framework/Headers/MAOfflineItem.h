//
//  MAOfflineItem.h
//  MapKit_static
//
//  Created by songjian on 14-4-23.
//  Copyright © 2016 Amap. All rights reserved.
//



#import "MAConfig.h"

#if MA_INCLUDE_OFFLINE

#import <Foundation/Foundation.h>

///离线地图item状态
typedef NS_ENUM(NSInteger, MAOfflineItemStatus)
{
    MAOfflineItemStatusNone = 0,    ///<不存在
    MAOfflineItemStatusCached,      ///<缓存状态
    MAOfflineItemStatusInstalled,   ///<已安装
    MAOfflineItemStatusExpired      ///<已过期
};

@interface MAOfflineItem : NSObject

///名字
@property (nonatomic, copy, readonly) NSString *name;

///简拼
@property (nonatomic, copy, readonly) NSString *jianpin;

///拼音
@property (nonatomic, copy, readonly) NSString *pinyin;

///区域编码
@property (nonatomic, copy, readonly) NSString *adcode;

///离线数据大小
@property (nonatomic, assign, readonly) long long size;

///状态
@property (nonatomic, assign, readonly) MAOfflineItemStatus itemStatus;

///已下载大小(当itemStatus == MAOfflineItemStatusCached 时有效)
@property (nonatomic, assign, readonly) long long downloadedSize;

@end

#endif
