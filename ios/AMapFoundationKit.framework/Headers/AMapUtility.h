//
//  AMapUtility.h
//  AMapFoundation
//
//  Created by xiaoming han on 15/10/27.
//  Copyright © 2015年 Amap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

//工具方法

/**
 * @brief 如果字符串为nil则返回空字符串
 */
FOUNDATION_STATIC_INLINE NSString * AMapEmptyStringIfNil(NSString *s)
{
    return s ? s : @"";
}

///坐标类型枚举
typedef NS_ENUM(NSInteger, AMapCoordinateType)
{
    AMapCoordinateTypeAMap = -1,    ///<AMap
    AMapCoordinateTypeBaidu = 0,    ///<Baidu
    AMapCoordinateTypeMapBar,       ///<MapBar
    AMapCoordinateTypeMapABC,       ///<MapABC
    AMapCoordinateTypeSoSoMap,      ///<SoSoMap
    AMapCoordinateTypeAliYun,       ///<AliYun
    AMapCoordinateTypeGoogle,       ///<Google
    AMapCoordinateTypeGPS,          ///<GPS
};

/**
 * @brief 转换目标经纬度为高德坐标系，不在枚举范围内的经纬度将直接返回。
 * @param coordinate 待转换的经纬度
 * @param type       坐标系类型
 * @return 高德坐标系经纬度
 */
FOUNDATION_EXTERN CLLocationCoordinate2D AMapCoordinateConvert(CLLocationCoordinate2D coordinate, AMapCoordinateType type);

/**
 * @brief 判断目标经纬度处是否有高德数据。输入参数为高德坐标系。此方法为粗略判断，在边界地区可能会不准确。
 * @param coordinate 待判断的目标经纬度
 * @return 布尔值。YES:有数据，NO:没数据
 */
FOUNDATION_EXTERN BOOL AMapDataAvailableForCoordinate(CLLocationCoordinate2D coordinate);


