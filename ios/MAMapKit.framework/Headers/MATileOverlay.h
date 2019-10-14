//
//  MATileOverlay.h
//  MapKit_static
//
//  Created by Li Fei on 11/22/13.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAOverlay.h"

///该类是覆盖在球面墨卡托投影上的图片tiles的数据源
@interface MATileOverlay : NSObject <MAOverlay>

///瓦片大小，默认是256x256, 最小支持64*64
@property (nonatomic, assign) CGSize tileSize;

///tileOverlay的可见最小Zoom值
@property NSInteger minimumZ;

///tileOverlay的可见最大Zoom值
@property NSInteger maximumZ;

///同initWithURLTemplate:中的URLTemplate
@property (readonly) NSString *URLTemplate;

///暂未开放
@property (nonatomic) BOOL canReplaceMapContent;

///区域外接矩形，可用来设定tileOverlay的可渲染区域
@property (nonatomic) MAMapRect boundingMapRect;

///是否停止不在显示区域内的瓦片下载，默认NO. since 5.3.0
@property (nonatomic, assign) BOOL disableOffScreenTileLoading;

/**
 * @brief 根据指定的URLTemplate生成tileOverlay
 * @param URLTemplate URLTemplate是一个包含"{x}","{y}","{z}","{scale}"的字符串,"{x}","{y}","{z}","{scale}"会被tile path的值所替换，并生成用来加载tile图片数据的URL 。例如 http://server/path?x={x}&y={y}&z={z}&scale={scale}
 * @return 以指定的URLTemplate字符串生成tileOverlay
 */
- (id)initWithURLTemplate:(NSString *)URLTemplate;

@end

///MATileOverlayPath
struct MATileOverlayPath{
    NSInteger x; ///< x坐标
    NSInteger y; ///< y坐标
    NSInteger z; ///< 缩放级别
    CGFloat contentScaleFactor; ///< 屏幕的scale factor
};
typedef struct MATileOverlayPath MATileOverlayPath;

///子类可覆盖CustomLoading中的方法来自定义加载MATileOverlay的行为。
@interface MATileOverlay (CustomLoading)

/**
 * @brief 以tile path生成URL。用于加载tile,此方法默认填充URLTemplate
 * @param path tile path
 * @return 以tile path生成tileOverlay
 */
- (NSURL *)URLForTilePath:(MATileOverlayPath)path;

/**
 * @brief 加载被请求的tile,并以tile数据或加载tile失败error访问回调block;默认实现为首先用URLForTilePath去获取URL,然后用异步NSURLConnection加载tile
 * @param path   tile path
 * @param result 用来传入tile数据或加载tile失败的error访问的回调block
 */
- (void)loadTileAtPath:(MATileOverlayPath)path result:(void (^)(NSData *tileData, NSError *error))result;

/**
 * @brief 取消请求瓦片，当地图显示区域发生变化时，会取消显示区域外的瓦片的下载, 当disableOffScreenTileLoading=YES时会被调用。since 5.3.0
 * @param path  tile path
 */
- (void)cancelLoadOfTileAtPath:(MATileOverlayPath)path;

@end
