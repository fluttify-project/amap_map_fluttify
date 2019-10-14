//
//  MAParticleOverlayOptions.h
//  MAMapKit
//
//  Created by liubo on 2018/9/18.
//  Copyright © 2018年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAShape.h"
#import "MAOverlay.h"

#pragma mark - MAParticleOverlayType

///天气类型
typedef NS_ENUM(NSInteger, MAParticleOverlayType)
{
    MAParticleOverlayTypeSunny = 1, ///<晴天
    MAParticleOverlayTypeRain,      ///<雨天
    MAParticleOverlayTypeSnowy,     ///<雪天
    MAParticleOverlayTypeHaze,      ///<雾霾
};

#pragma mark - MAParticleVelocityGenerate

///粒子的速度生成类. since 6.5.0
@protocol MAParticleVelocityGenerate <NSObject>
@required

///X轴方向上的速度变化率
- (CGFloat)getX;

///Y轴方向上的速度变化率
- (CGFloat)getY;

///Z轴方向上的速度变化率
- (CGFloat)getZ;
@end

#pragma mark - MAParticleRandomVelocityGenerate

///粒子的随机速度生成类. since 6.5.0
@interface MAParticleRandomVelocityGenerate : NSObject <MAParticleVelocityGenerate>

/**
 * @brief 根据速度范围值生成粒子的速度变化类
 * @param x1 起始的速度x值
 * @param y1 起始的速度y值
 * @param z1 起始的速度z值
 * @param x2 结束的速度x值
 * @param y2 结束的速度y值
 * @param z2 结束的速度z值
 * @return 生成粒子的颜色变化类
 */
- (instancetype)initWithBoundaryValueX1:(float)x1 Y1:(float)y1 Z1:(float)z1 X2:(float)x2 Y2:(float)y2 Z2:(float)z2;

@end

#pragma mark - MAParticleColorGenerate

///粒子的颜色生成类. since 6.5.0
@protocol MAParticleColorGenerate <NSObject>
@required
///生成的颜色值，需为包含四个float值的数组。
- (float *)getColor;
@end

#pragma mark - MAParticleRandomColorGenerate

///粒子的随机颜色生成类. since 6.5.0
@interface MAParticleRandomColorGenerate : NSObject <MAParticleColorGenerate>

/**
 * @brief 根据颜色范围值生成粒子的颜色变化类
 * @param r1 起始的颜色r值
 * @param g1 起始的颜色g值
 * @param b1 起始的颜色b值
 * @param a1 起始的颜色a值
 * @param r2 结束的颜色r值
 * @param g2 结束的颜色g值
 * @param b2 结束的颜色b值
 * @param a2 结束的颜色a值
 * @return 生成粒子的颜色变化类
 */
- (instancetype)initWithBoundaryColorR1:(float)r1 G1:(float)g1 B1:(float)b1 A1:(float)a1 R2:(float)r2 G2:(float)g2 B2:(float)b2 A2:(float)a2;

@end

#pragma mark - MAParticleRotationGenerate

///粒子的角度生成类. since 6.5.0
@protocol MAParticleRotationGenerate <NSObject>
@required
///生成的角度值
- (float)getRotate;
@end

#pragma mark - MAParticleConstantRotationGenerate

///粒子的固定角度生成类. since 6.5.0
@interface MAParticleConstantRotationGenerate : NSObject <MAParticleRotationGenerate>

/**
 * @brief 根据角度生成粒子的角度变化类
 * @param rotate 固定的角度
 * @return 生成粒子的角度变化类
 */
- (instancetype)initWithRotate:(float)rotate;

@end

#pragma mark - MAParticleSizeGenerate

///粒子的大小生成类. since 6.5.0
@protocol MAParticleSizeGenerate <NSObject>
@required

///X轴上变化比例
- (float)getSizeX:(float)timeFrame;

///Y轴上变化比例
- (float)getSizeY:(float)timeFrame;

///Z轴上变化比例
- (float)getSizeZ:(float)timeFrame;
@end

#pragma mark - MAParticleCurveSizeGenerate

///粒子的大小变化类. since 6.5.0
@interface MAParticleCurveSizeGenerate : NSObject <MAParticleSizeGenerate>

/**
 * @brief 根据三个轴上的变化比例生成粒子的大小变化类
 * @param x X轴上变化比例
 * @param y Y轴上变化比例
 * @param z Z轴上变化比例
 * @return 生成粒子的大小变化类
 */
- (instancetype)initWithCurveX:(float)x Y:(float)y Z:(float)z;

@end

#pragma mark - MAParticleEmissionModule

///粒子的发射率类，每隔多少时间发射粒子数量，越多会越密集. since 6.5.0
@interface MAParticleEmissionModule : NSObject

/**
 * @brief 根据发射数量和发射间隔生成粒子的发射率类。关系为:"发射数量为rate粒子->等待rateTime间隔->发射数量为rate粒子->等待rateTime间隔"循环
 * @param rate 发射数量(不能为0)
 * @param rateTime 发射间隔
 * @return 生成粒子的发射率类
 */
- (instancetype)initWithEmissionRate:(int)rate rateTime:(int)rateTime;

@end

#pragma mark - MAParticleShapeModule

///粒子的发射区域模型协议. since 6.5.0
@protocol MAParticleShapeModule <NSObject>
@required

///新生成的发射点坐标，需为包含三个float值的数组。
- (float *)getPoint;

///坐标是否按比例生成
- (BOOL)isRatioEnable;
@end

#pragma mark - MAParticleSinglePointShapeModule

///粒子的发射单个点区域模型. since 6.5.0
@interface MAParticleSinglePointShapeModule : NSObject <MAParticleShapeModule>

/**
 * @brief 生成粒子的发射矩形区域模型，以比例的形式设置发射区域
 * @param x x坐标比例
 * @param y y坐标比例
 * @param z z坐标比例
 * @param isUseRatio 是否按比例
 * @return 新生成的粒子发射单个点区域模型
 */
- (instancetype)initWithShapeX:(float)x Y:(float)y Z:(float)z useRatio:(BOOL)isUseRatio;

@end

#pragma mark - MAParticleRectShapeModule

///粒子的发射矩形区域模型. since 6.5.0
@interface MAParticleRectShapeModule : NSObject <MAParticleShapeModule>

/**
 * @brief 生成粒子的发射矩形区域模型，以比例的形式设置发射区域。
 * @param left 左边距比例
 * @param top 上边距比例
 * @param right 右边距比例
 * @param bottom 下边距比例
 * @param isUseRatio 是否按比例
 * @return 新生成的粒子发射矩形区域模型
 */
- (instancetype)initWithLeft:(float)left top:(float)top right:(float)right bottom:(float)bottom useRatio:(BOOL)isUseRatio;

@end

#pragma mark - MAParticleOverLifeModule

///粒子生命周期过程中状态变化，包含速度、旋转和颜色的变化. since 6.5.0
@interface MAParticleOverLifeModule : NSObject

/**
 * @brief 设置粒子生命周期过程中速度的变化
 * @param velocity 遵循MAParticleVelocityGenerate协议的速度生成类
 */
- (void)setVelocityOverLife:(id<MAParticleVelocityGenerate>)velocity;

/**
 * @brief 设置粒子生命周期过程中角度的变化
 * @param rotation 遵循MAParticleRotationGenerate协议的角度生成类
 */
- (void)setRotationOverLife:(id<MAParticleRotationGenerate>)rotation;

/**
 * @brief 设置粒子生命周期过程中大小的变化
 * @param size 遵循MAParticleSizeGenerate协议的大小生成类
 */
- (void)setSizeOverLife:(id<MAParticleSizeGenerate>)size;

/**
 * @brief 设置粒子生命周期过程中颜色的变化
 * @param color 遵循MAParticleColorGenerate协议的颜色生成类
 */
- (void)setColorOverLife:(id<MAParticleColorGenerate>)color;

@end

#pragma mark - MAParticleOverlayOptions

///该类用于定义一个粒子覆盖物显示选项. since 6.5.0
@interface MAParticleOverlayOptions : NSObject

///option选项是否可见. (默认YES)
@property (nonatomic, assign) BOOL visibile;

///粒子系统存活时间. (默认5000,单位毫秒)
@property (nonatomic, assign) NSTimeInterval duration;

///粒子系统是否循环. (默认YES)
@property (nonatomic, assign) BOOL loop;

///粒子系统的粒子最大数量. (默认100)
@property (nonatomic, assign) NSInteger maxParticles;

///粒子系统的粒子图标. (默认nil)
@property (nonatomic, strong) UIImage *icon;

///每个粒子的初始大小. (默认(32.f*[[UIScreen mainScreen] nativeScale], 32.f*[[UIScreen mainScreen] nativeScale]),单位:OpenGLESPixels数量，计算方式为: OpenGLESPixels = ScreenPoint数量 * [[UIScreen mainScreen] nativeScale])
@property (nonatomic, assign) CGSize startParticleSize;

///每个粒子的存活时间. (默认5000,单位毫秒)
@property (nonatomic, assign) NSTimeInterval particleLifeTime;

///每个粒子的初始颜色. (默认nil)
@property (nonatomic, strong) id<MAParticleColorGenerate> particleStartColor;

///每个粒子的初始速度. (默认nil)
@property (nonatomic, strong) id<MAParticleVelocityGenerate> particleStartSpeed;

///粒子的发射率,参考 MAParticleEmissionModule 类. (默认nil)
@property (nonatomic, strong) MAParticleEmissionModule *particleEmissionModule;

///粒子的发射区域模型. (默认nil)
@property (nonatomic, strong) id<MAParticleShapeModule> particleShapeModule;

///粒子生命周期过程,参考 MAParticleOverLifeModule 类. (默认nil)
@property (nonatomic, strong) MAParticleOverLifeModule *particleOverLifeModule;

@end

#pragma mark - MAParticleOverlayOptionsFactory

///该类用于根据指定的天气类型，生成SDK内置的天气粒子覆盖物显示选项option. since 6.5.0
@interface MAParticleOverlayOptionsFactory : NSObject

/**
 * @brief 根据指定的天气类型生成粒子覆盖物显示选项option
 * @param particleType 天气类型
 * @return 新生成的粒子覆盖物显示选项option
 */
+ (NSArray<MAParticleOverlayOptions *> *)particleOverlayOptionsWithType:(MAParticleOverlayType)particleType;

@end
