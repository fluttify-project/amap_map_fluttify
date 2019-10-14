//
//  MAUserLocationRepresentation.h
//  MAMapKit
//
//  Created by shaobin on 16/12/27.
//  Copyright © 2016年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define kAccuracyCircleDefaultColor [UIColor colorWithRed:136/255.0 green:166/255.0 blue:227/255.0 alpha:.3]

///用户位置显示样式控制
@interface MAUserLocationRepresentation : NSObject

///精度圈是否显示，默认YES
@property (nonatomic, assign) BOOL showsAccuracyRing;
///是否显示方向指示(MAUserTrackingModeFollowWithHeading模式开启)。默认为YES
@property (nonatomic, assign) BOOL showsHeadingIndicator;
///精度圈 填充颜色, 默认 kAccuracyCircleDefaultColor
@property (nonatomic, strong) UIColor *fillColor;
///精度圈 边线颜色, 默认 kAccuracyCircleDefaultColor
@property (nonatomic, strong) UIColor *strokeColor;
///精度圈 边线宽度，默认0
@property (nonatomic, assign) CGFloat lineWidth;

///定位点背景色，不设置默认白色
@property (nonatomic, strong) UIColor *locationDotBgColor;
///定位点蓝色圆点颜色，不设置默认蓝色
@property (nonatomic, strong) UIColor *locationDotFillColor;
///内部蓝色圆点是否使用律动效果, 默认YES
@property (nonatomic, assign) BOOL enablePulseAnnimation;
///定位图标, 与蓝色原点互斥
@property (nonatomic, strong) UIImage* image;

@end
