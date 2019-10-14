//
//  MAParticleOverlayRenderer.h
//  MAMapKit
//
//  Created by liubo on 2018/9/19.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAOverlayRenderer.h"
#import "MAParticleOverlayOptions.h"
#import "MAParticleOverlay.h"

///该类是MAParticleOverlay的显示Renderer. since 6.5.0
@interface MAParticleOverlayRenderer : MAOverlayRenderer

///关联的MAParticleOverlay model
@property (nonatomic, readonly) MAParticleOverlay *particleOverlay;

/**
 * @brief 根据指定MAParticleOverlay生成对应的Renderer
 * @param particleOverlay 指定的MAParticleOverlay model
 * @return 生成的Renderer
 */
- (instancetype)initWithParticleOverlay:(MAParticleOverlay *)particleOverlay;

@end
