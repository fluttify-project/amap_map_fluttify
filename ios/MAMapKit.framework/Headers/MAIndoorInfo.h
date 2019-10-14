//
//  MAIndoorInfo.h
//  MAMapKit
//
//  Created by 翁乐 on 5/6/16.
//  Copyright © 2016 Amap. All rights reserved.
//

#import "MAConfig.h"

#if MA_INCLUDE_INDOOR

#import <Foundation/Foundation.h>

///室内楼层信息
@interface MAIndoorFloorInfo : NSObject
///楼层名
@property (nonatomic, readonly) NSString *floorName;
///楼层index
@property (nonatomic, readonly) int floorIndex;
///楼层别名
@property (nonatomic, readonly) NSString *floorNona;
///是否属于停车场
@property (nonatomic, readonly) BOOL isPark;
@end

///室内图信息
@interface MAIndoorInfo : NSObject
///室内地图中文名
@property (nonatomic, readonly) NSString *cnName;
///室内地图英文名
@property (nonatomic, readonly) NSString *enName;
///室内地图poiID
@property (nonatomic, readonly) NSString *poiID;
///建筑类型
@property (nonatomic, readonly) NSString *buildingType;
///当前楼层index，和floorInfo内部的index相关
@property (nonatomic, readonly) int activeFloorIndex;
///当前激活的楼层，只和floorInfo相关，与floorInfo内部元素的index无关
@property (nonatomic, readonly) int activeFloorInfoIndex;
///由 MAIndoorFloorInfo 组成，可直接通过 activeFloorInfoIndex 取出当前楼层
@property (nonatomic, readonly) NSArray *floorInfo;
///楼层数量
@property (nonatomic, readonly) int numberOfFloor;
///停车场楼层数量
@property (nonatomic, readonly) int numberOfParkFloor;
@end

#endif
