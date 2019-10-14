//
//  MAOfflineMapViewController.h
//  MAMapKit
//
//  Created by hanxiaoming on 2017/12/14.
//  Copyright © 2017年 Amap. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MAOfflineMap.h"

///离线地图ViewController（since 5.7.0）
@interface MAOfflineMapViewController : UIViewController

/// MAOfflineMapViewController单例，请使用单例以保证离线地图状态正确同步。
+ (instancetype)sharedInstance;

///MAOfflineMap实例
@property (nonatomic, readonly) MAOfflineMap *offlineMap;

@end
