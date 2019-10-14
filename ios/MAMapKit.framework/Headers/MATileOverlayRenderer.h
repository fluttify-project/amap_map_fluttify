//
//  MATileOverlayRenderer.h
//  MapKit_static
//
//  Created by Li Fei on 11/25/13.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAOverlayRenderer.h"
#import "MATileOverlay.h"

///此类是将MAOverlayRenderer中的覆盖tiles显示在地图上的Renderer
@interface MATileOverlayRenderer : MAOverlayRenderer

///覆盖在球面墨卡托投影上的图片tiles的数据源
@property (nonatomic ,readonly) MATileOverlay *tileOverlay;

/**
 * @brief 根据指定的tileOverlay生成将tiles显示在地图上的Renderer
 * @param tileOverlay 制定了覆盖图片
 * @return 以tileOverlay新生成Renderer
 */
- (instancetype)initWithTileOverlay:(MATileOverlay *)tileOverlay;

/**
 * @brief 清除所有tile的缓存，并刷新overlay
 */
- (void)reloadData;

@end
