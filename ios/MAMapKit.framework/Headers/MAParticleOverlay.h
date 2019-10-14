//
//  MAParticleOverlay.h
//  MAMapKit
//
//  Created by liubo on 2018/9/19.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAShape.h"
#import "MAOverlay.h"
#import "MAParticleOverlayOptions.h"

#pragma mark - MAParticleOverlay

///该类用于定义一个粒子MAParticleOverlay, 通常MAParticleOverlay是MAParticleOverlayRenderer的model. since 6.5.0
@interface MAParticleOverlay : MAShape <MAOverlay>

/**
 * @brief 根据粒子覆盖物选项option生成MAParticleOverlay
 * @param option 粒子覆盖物选项option
 * @return 新生成的粒子覆盖物MAParticleOverlay
 */
+ (instancetype)particleOverlayWithOption:(MAParticleOverlayOptions *)option;

///当前粒子覆盖物的option，如果需要修改option的配置，需要修改后重新调用setOverlayOption:方法。
@property (nonatomic, strong, readonly) MAParticleOverlayOptions *overlayOption;

/**
 * @brief 更新粒子覆盖物选项option
 * @param overlayOption 要更新的粒子覆盖物选项
 */
- (void)updateOverlayOption:(MAParticleOverlayOptions *)overlayOption;

@end
