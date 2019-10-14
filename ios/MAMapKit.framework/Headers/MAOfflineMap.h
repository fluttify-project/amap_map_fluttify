//
//  MAOfflineMap.h
//
//  Copyright (c) 2013年 Amap. All rights reserved.
//

#import "MAConfig.h"

#if MA_INCLUDE_OFFLINE

#import <Foundation/Foundation.h>
#import "MAOfflineProvince.h"
#import "MAOfflineItemNationWide.h"
#import "MAOfflineItemMunicipality.h"

///离线地图下载状态
typedef NS_ENUM(NSInteger, MAOfflineMapDownloadStatus)
{
    MAOfflineMapDownloadStatusWaiting = 0,      //!< 以插入队列，等待中
    MAOfflineMapDownloadStatusStart,            //!< 开始下载
    MAOfflineMapDownloadStatusProgress,         //!< 下载过程中
    MAOfflineMapDownloadStatusCompleted,        //!< 下载成功
    MAOfflineMapDownloadStatusCancelled,        //!< 取消
    MAOfflineMapDownloadStatusUnzip,            //!< 解压缩
    MAOfflineMapDownloadStatusFinished,         //!< 全部顺利完成
    MAOfflineMapDownloadStatusError             //!< 发生错误
};

///离线下载错误domain
extern NSString * const MAOfflineMapErrorDomain;

///离线地图下载错误类型
typedef NS_ENUM(NSInteger, MAOfflineMapError)
{
    MAOfflineMapErrorUnknown = -1,              //!< 未知的错误
    MAOfflineMapErrorCannotWriteToTmp = -2,     //!< 写入临时目录失败
    MAOfflineMapErrorCannotOpenZipFile = -3,    //!< 打开归档文件失败
    MAOfflineMapErrorCannotExpand = -4          //!< 解归档文件失败
};

/**
 *  当downloadStatus == MAOfflineMapDownloadStatusProgress 时, info参数是个NSDictionary,
 *  如下两个key用来获取已下载和总和的数据大小(单位byte), 对应的是NSNumber(long long) 类型.
 *  当downloadStatus == MAOfflineMapDownloadStatusError 时, info参数是NSError
 */

///下载过程info的key，表示已下载数据大小
extern NSString * const MAOfflineMapDownloadReceivedSizeKey;

///下载过程info的key，表示总的数据大小
extern NSString * const MAOfflineMapDownloadExpectedSizeKey;

/**
 * @brief 离线地图下载过程回调block
 * @param downloadItem 下载的item
 * @param downloadStatus 下载状态
 * @param info 下载过程中的附加信息
 */
typedef void(^MAOfflineMapDownloadBlock)(MAOfflineItem * downloadItem, MAOfflineMapDownloadStatus downloadStatus, id info);

/**
 * @brief 离线地图检查更新回调block
 * @param hasNewestVersion 是否有新版本的布尔值
 */
typedef void(^MAOfflineMapNewestVersionBlock)(BOOL hasNewestVersion);

///离线地图管理类
@interface MAOfflineMap : NSObject

/**
 * @brief 获取MAOfflineMap 单例
 * @return MAOfflineMap
 */
+ (MAOfflineMap *)sharedOfflineMap;

///省份数组(每个元素均是MAOfflineProvince类型)
@property (nonatomic, readonly) NSArray<MAOfflineProvince *> *provinces;

///直辖市数组(每个元素均是MAOfflineItemMunicipality类型)
@property (nonatomic, readonly) NSArray<MAOfflineItemMunicipality *> *municipalities;

///全国概要图
@property (nonatomic, readonly) MAOfflineItemNationWide *nationWide;

///城市数组, 包括普通城市与直辖市
@property (nonatomic, readonly) NSArray<MAOfflineCity *> *cities;

///离线数据的版本号(由年月日组成, 如@"20130715")
@property (nonatomic, readonly) NSString *version;

/**
 * @brief 初始化离线地图数据，如果第一次运行且offlinePackage.plist文件不存在，则需要首先执行此方法。否则MAOfflineMap中的省、市、版本号等数据都为空。
 * @param block 初始化完成回调
 */
- (void)setupWithCompletionBlock:(void(^)(BOOL setupSuccess))block;

/**
 * @brief 启动下载
 * @param item                                  数据
 * @param shouldContinueWhenAppEntersBackground 进入后台是否允许继续下载
 * @param downloadBlock                         下载过程block
 */
- (void)downloadItem:(MAOfflineItem *)item shouldContinueWhenAppEntersBackground:(BOOL)shouldContinueWhenAppEntersBackground downloadBlock:(MAOfflineMapDownloadBlock)downloadBlock;

/**
 * @brief 监测是否正在下载
 * @param item 条目
 * @return 是否在下载
 */
- (BOOL)isDownloadingForItem:(MAOfflineItem *)item;

/**
 * @brief 暂停下载
 * @param item 条目
 * @return 是否在执行了cancel，如果该item并未在下载中，则返回NO
 */
- (BOOL)pauseItem:(MAOfflineItem *)item;

/**
 * @brief 删除item对应离线地图数据
 * @param item 条目
 */
- (void)deleteItem:(MAOfflineItem *)item;

/**
 * @brief 取消全部下载
 */
- (void)cancelAll;

/**
 * @brief 清除所有在磁盘上的离线地图数据, 之后调用[mapView reloadMap]会使其立即生效
 */
- (void)clearDisk;

/**
 * @brief 监测新版本。注意：如果有新版本，会重建所有的数据，包括provinces、municipalities、nationWide、cities，外部使用应当在newestVersionBlock中更新所持有的对象。
 * @param newestVersionBlock 回调block
 */
- (void)checkNewestVersion:(MAOfflineMapNewestVersionBlock)newestVersionBlock;

@end

@interface MAOfflineMap (Deprecated)

///deprecated
@property (nonatomic, readonly) NSArray *offlineCities __attribute__ ((deprecated("use cities instead")));

///deprecated
- (void)downloadCity:(MAOfflineCity *)city downloadBlock:(MAOfflineMapDownloadBlock)downloadBlock __attribute__ ((deprecated("use - (void)downloadItem:(MAOfflineItem *)item shouldContinueWhenAppEntersBackground:(BOOL)shouldContinueWhenAppEntersBackground downloadBlock:(MAOfflineMapDownloadBlock)downloadBlock instead")));

///deprecated
- (void)downloadCity:(MAOfflineCity *)city shouldContinueWhenAppEntersBackground:(BOOL)shouldContinueWhenAppEntersBackground downloadBlock:(MAOfflineMapDownloadBlock)downloadBlock __attribute__ ((deprecated("use - (void)downloadItem:(MAOfflineItem *)item shouldContinueWhenAppEntersBackground:(BOOL)shouldContinueWhenAppEntersBackground downloadBlock:(MAOfflineMapDownloadBlock)downloadBlock instead")));

///deprecated
- (BOOL)isDownloadingForCity:(MAOfflineCity *)city __attribute__ ((deprecated("use - (BOOL)isDownloadingForItem:(MAOfflineItem *)item instead")));

///deprecated
- (void)pause:(MAOfflineCity *)city __attribute__ ((deprecated("use - (void)pauseItem:(MAOfflineItem *)item instead")));

@end

#endif
