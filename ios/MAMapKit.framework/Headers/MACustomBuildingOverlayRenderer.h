//
//  MACustomBuildingOverlayRenderer.h
//  MAMapKit
//
//  Created by liubo on 2018/5/23.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAOverlayRenderer.h"
#import "MACustomBuildingOverlay.h"

///该类是MACustomBuildingOverlay的显示Renderer. since 6.3.0
@interface MACustomBuildingOverlayRenderer : MAOverlayRenderer

///关联的MACustomBuildingOverlay model
@property (nonatomic, readonly) MACustomBuildingOverlay *customBuildingOverlay;

/**
 * @brief 根据指定MACustomBuildingOverlay生成对应的Renderer
 * @param customBuildingOverlay 指定的MACustomBuildingOverlay model
 * @return 生成的Renderer
 */
- (instancetype)initWithCustomBuildingOverlay:(MACustomBuildingOverlay *)customBuildingOverlay;

@end
