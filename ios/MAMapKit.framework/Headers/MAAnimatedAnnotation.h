//
//  MAAnimatedAnnotation.h
//  MAMapKit
//
//  Created by shaobin on 16/12/8.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"
#import "MAPointAnnotation.h"
#import "MAAnnotationMoveAnimation.h"

///支持动画效果的点标注
@interface MAAnimatedAnnotation : MAPointAnnotation<MAAnimatableAnnotation>

///移动方向. since 4.5.0
@property (nonatomic, assign) CLLocationDirection movingDirection;

/**
 @brief 添加移动动画, 第一个添加的动画以当前coordinate为起始点，沿传入的coordinates点移动，否则以上一个动画终点为起始点. since 4.5.0
 @param coordinates c数组，由调用者负责coordinates指向内存的管理
 @param count coordinates数组大小
 @param duration 动画时长，0或<0为无动画
 @param name 名字，如不指定可传nil
 @param completeCallback 动画完成回调，isFinished: 动画是否执行完成
 */
- (MAAnnotationMoveAnimation *)addMoveAnimationWithKeyCoordinates:(CLLocationCoordinate2D *)coordinates
                                                            count:(NSUInteger)count
                                                     withDuration:(CGFloat)duration
                                                         withName:(NSString *)name
                                                 completeCallback:(void(^)(BOOL isFinished))completeCallback;

/**
 @brief 添加移动动画, 第一个添加的动画以当前coordinate为起始点，沿传入的coordinates点移动，否则以上一个动画终点为起始点. since 5.4.0
 @param coordinates c数组，由调用者负责coordinates指向内存的管理
 @param count coordinates数组大小
 @param duration 动画时长，0或<0为无动画
 @param name 名字，如不指定可传nil
 @param completeCallback 动画完成回调，isFinished: 动画是否执行完成
 @param stepCallback 动画每一帧回调
 */
- (MAAnnotationMoveAnimation *)addMoveAnimationWithKeyCoordinates:(CLLocationCoordinate2D *)coordinates
                                                            count:(NSUInteger)count
                                                     withDuration:(CGFloat)duration
                                                         withName:(NSString *)name
                                                 completeCallback:(void(^)(BOOL isFinished))completeCallback
                                                     stepCallback:(void(^)(MAAnnotationMoveAnimation* currentAni))stepCallback;

/**
 * @brief 获取所有未完成的移动动画, 返回数组内为MAAnnotationMoveAnimation对象. since 4.5.0
 * @return 返回所有移动动画，数组内元素类型为 MAAnnotationMoveAnimation
 */
- (NSArray<MAAnnotationMoveAnimation*> *)allMoveAnimations;

/**
 * @brief 设置需要开始动画，自定义其他类型动画时需要调用. since 6.0.0
 */
- (void)setNeedsStart;

@end
