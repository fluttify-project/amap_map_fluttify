//
//  MAGeometry.h
//  MAMapKit
//
//  Created by AutoNavi.
//  Copyright (c) 2013年 Amap. All rights reserved.
//

#import "MAConfig.h"
#import <CoreGraphics/CoreGraphics.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>


#ifdef __cplusplus
extern "C" {
#endif
    
    ///东北、西南两个点定义的四边形经纬度范围
    struct MACoordinateBounds{
        CLLocationCoordinate2D northEast; ///< 东北角经纬度
        CLLocationCoordinate2D southWest; ///< 西南角经纬度
    };
    typedef struct MACoordinateBounds MACoordinateBounds;
    
    ///经度、纬度定义的经纬度跨度范围
    struct MACoordinateSpan{
        CLLocationDegrees latitudeDelta;  ///< 纬度跨度
        CLLocationDegrees longitudeDelta; ///< 经度跨度
    };
    typedef struct MACoordinateSpan MACoordinateSpan;
    
    ///中心点、跨度范围定义的四边形经纬度范围
    struct MACoordinateRegion{
        CLLocationCoordinate2D center;  ///< 中心点经纬度
        MACoordinateSpan span;          ///< 跨度范围
    };
    typedef struct MACoordinateRegion MACoordinateRegion;
    
    ///平面投影坐标结构定义
    struct MAMapPoint{
        double x; ///<x坐标
        double y; ///<y坐标
    };
    typedef struct MAMapPoint MAMapPoint;
    
    ///平面投影大小结构定义
    struct MAMapSize{
        double width;   ///<宽度
        double height;  ///<高度
    };
    typedef struct MAMapSize MAMapSize;
    
    ///平面投影矩形结构定义
    struct MAMapRect{
        MAMapPoint origin;  ///<左上角坐标
        MAMapSize size;     ///<大小
    };
    typedef struct MAMapRect MAMapRect;
    
    ///比例关系:MAZoomScale = Screen Point / MAMapPoint, 当MAZoomScale = 1时, 1 screen point = 1 MAMapPoint, 当MAZoomScale = 0.5时, 1 screen point = 2 MAMapPoints
    typedef double MAZoomScale;
    
    ///世界范围大小
    extern const MAMapSize MAMapSizeWorld;
    ///世界范围四边形
    extern const MAMapRect MAMapRectWorld;
    ///(MAMapRect){{INFINITY, INFINITY}, {0, 0}};
    extern const MAMapRect MAMapRectNull;
    ///(MAMapRect){{0, 0}, {0, 0}}
    extern const MAMapRect MAMapRectZero;
    
    static inline MACoordinateBounds MACoordinateBoundsMake(CLLocationCoordinate2D northEast,CLLocationCoordinate2D southWest)
    {
        return (MACoordinateBounds){northEast, southWest};
    }
    
    static inline MACoordinateSpan MACoordinateSpanMake(CLLocationDegrees latitudeDelta, CLLocationDegrees longitudeDelta)
    {
        return (MACoordinateSpan){latitudeDelta, longitudeDelta};
    }
    
    static inline MACoordinateRegion MACoordinateRegionMake(CLLocationCoordinate2D centerCoordinate, MACoordinateSpan span)
    {
        return (MACoordinateRegion){centerCoordinate, span};
    }

    /**
     * @brief 生成一个新的MACoordinateRegion
     * @param centerCoordinate   中心点坐标
     * @param latitudinalMeters  垂直跨度(单位 米)
     * @param longitudinalMeters 水平跨度(单位 米)
     * @return 新的MACoordinateRegion
     */
    extern MACoordinateRegion MACoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters);
    
    /**
     * @brief 经纬度坐标转平面投影坐标
     * @param coordinate 要转化的经纬度坐标
     * @return 平面投影坐标
     */
    extern MAMapPoint MAMapPointForCoordinate(CLLocationCoordinate2D coordinate);
    
    /**
     * @brief 平面投影坐标转经纬度坐标
     * @param mapPoint 要转化的平面投影坐标
     * @return 经纬度坐标
     */
    extern CLLocationCoordinate2D MACoordinateForMapPoint(MAMapPoint mapPoint);
    
    /**
     * @brief 平面投影矩形转region
     * @param rect 要转化的平面投影矩形
     * @return region
     */
    extern MACoordinateRegion MACoordinateRegionForMapRect(MAMapRect rect);
    
    /**
     * @brief region转平面投影矩形
     * @param region region 要转化的region
     * @return 平面投影矩形
     */
    extern MAMapRect MAMapRectForCoordinateRegion(MACoordinateRegion region);
    
    /**
     * @brief 单位投影的距离
     * @param latitude 经纬度
     * @return 距离
     */
    extern CLLocationDistance MAMetersPerMapPointAtLatitude(CLLocationDegrees latitude);
    
    /**
     * @brief 1米对应的投影
     * @param latitude 经纬度
     * @return 1米对应的投影
     */
    extern double MAMapPointsPerMeterAtLatitude(CLLocationDegrees latitude);

    /**
     * @brief 投影两点之间的距离
     * @param a a点
     * @param b b点
     * @return 距离
     */
    extern CLLocationDistance MAMetersBetweenMapPoints(MAMapPoint a, MAMapPoint b);
    
    /**
     * @brief 经纬度间的面积(单位 平方米)
     * @param northEast 东北经纬度
     * @param southWest 西南经纬度
     * @return 面积
     */
    extern double MAAreaBetweenCoordinates(CLLocationCoordinate2D northEast, CLLocationCoordinate2D southWest);
    
    /**
     * @brief 获取Inset后的MAMapRect
     * @param rect rect
     * @param dx   x点
     * @param dy   y点
     * @return MAMapRect
     */
    extern MAMapRect MAMapRectInset(MAMapRect rect, double dx, double dy);
    
    /**
     * @brief 合并两个MAMapRect
     * @param rect1 rect1
     * @param rect2 rect2
     * @return 合并后的rect
     */
    extern MAMapRect MAMapRectUnion(MAMapRect rect1, MAMapRect rect2);
    
    /**
     * @brief 判断size1是否包含size2
     * @param size1 size1
     * @param size2 size2
     * @return 判断结果
     */
    extern BOOL MAMapSizeContainsSize(MAMapSize size1, MAMapSize size2);
    
    /**
     * @brief 判断点是否在矩形内
     * @param rect  矩形rect
     * @param point 点
     * @return 判断结果
     */
    extern BOOL MAMapRectContainsPoint(MAMapRect rect, MAMapPoint point);
    
    /**
     * @brief 判断两矩形是否相交
     * @param rect1 rect1
     * @param rect2 rect2
     * @return 判断结果
     */
    extern BOOL MAMapRectIntersectsRect(MAMapRect rect1, MAMapRect rect2);
    
    /**
     * @brief 判断矩形rect1是否包含矩形rect2
     * @param rect1 rect1
     * @param rect2 rect2
     * @return 判断结果
     */
    extern BOOL MAMapRectContainsRect(MAMapRect rect1, MAMapRect rect2);
    
    /**
     * @brief 判断点是否在圆内
     * @param point  点
     * @param center 圆的中心点
     * @param radius 圆的半径
     * @return 判断结果
     */
    extern BOOL MACircleContainsPoint(MAMapPoint point, MAMapPoint center, double radius);
    
    /**
     * @brief 判断经纬度点是否在圆内
     * @param point  经纬度
     * @param center 圆的中心经纬度
     * @param radius 圆的半径
     * @return 判断结果
     */
    extern BOOL MACircleContainsCoordinate(CLLocationCoordinate2D point, CLLocationCoordinate2D center, double radius);
    
    /**
     * @brief 判断点是否在多边形内
     * @param point   点
     * @param polygon 多边形
     * @param count   多边形点的数量
     * @return 判断结果
     */
    extern BOOL MAPolygonContainsPoint(MAMapPoint point, MAMapPoint *polygon, NSUInteger count);

    /**
     * @brief 判断经纬度点是否在多边形内
     * @param point   经纬度点
     * @param polygon 多边形
     * @param count   多边形点的数量
     * @return 判断结果
     */
    extern BOOL MAPolygonContainsCoordinate(CLLocationCoordinate2D point, CLLocationCoordinate2D *polygon, NSUInteger count);
    
    /**
     * @brief 取在lineStart和lineEnd组成的线段上距离point距离最近的点
     * @param lineStart 线段起点
     * @param lineEnd   线段终点
     * @param point     测试点
     * @return 距离point最近的点坐标
     */
    extern MAMapPoint MAGetNearestMapPointFromLine(MAMapPoint lineStart, MAMapPoint lineEnd, MAMapPoint point);
    
    /**
     * @brief 获取墨卡托投影切块回调block，如果是无效的映射，则返回(-1, -1, 0, 0, 0, 0)
     * @param offsetX 左上点距离所属tile的位移X, 单位像素
     * @param offsetY 左上点距离所属tile的位移Y, 单位像素
     * @param minX    覆盖tile的最小x
     * @param maxX    覆盖tile的最大x
     * @param minY    覆盖tile的最小y
     * @param maxY    覆盖tile的最大y
     */
    typedef void (^AMapTileProjectionBlock)(int offsetX, int offsetY, int minX, int maxX, int minY, int maxY);
    
    /**
     * @brief 根据所给经纬度区域获取墨卡托投影切块信息
     * @param bounds         经纬度区域
     * @param levelOfDetails 对应缩放级别, 取值0-20
     * @param tileProjection 返回的切块信息block
     */
    extern void MAGetTileProjectionFromBounds(MACoordinateBounds bounds, int levelOfDetails, AMapTileProjectionBlock tileProjection);
    
    /**
     * @brief 计算多边形面积，点与点之间按顺序尾部相连, 第一个点与最后一个点相连
     * @param coordinates 指定的经纬度坐标点数组，C数组，调用者负责内存管理
     * @param count 坐标点的个数
     * @return 多边形的面积
     */
    extern double MAAreaForPolygon(CLLocationCoordinate2D *coordinates, int count);
    
    static inline MAMapPoint MAMapPointMake(double x, double y)
    {
        return (MAMapPoint){x, y};
    }
    
    static inline MAMapSize MAMapSizeMake(double width, double height)
    {
        return (MAMapSize){width, height};
    }
    
    static inline MAMapRect MAMapRectMake(double x, double y, double width, double height)
    {
        return (MAMapRect){MAMapPointMake(x, y), MAMapSizeMake(width, height)};
    }
    
    static inline double MAMapRectGetMinX(MAMapRect rect)
    {
        return rect.origin.x;
    }
    
    static inline double MAMapRectGetMinY(MAMapRect rect)
    {
        return rect.origin.y;
    }
    
    static inline double MAMapRectGetMidX(MAMapRect rect)
    {
        return rect.origin.x + rect.size.width / 2.0;
    }
    
    static inline double MAMapRectGetMidY(MAMapRect rect)
    {
        return rect.origin.y + rect.size.height / 2.0;
    }
    
    static inline double MAMapRectGetMaxX(MAMapRect rect)
    {
        return rect.origin.x + rect.size.width;
    }
    
    static inline double MAMapRectGetMaxY(MAMapRect rect)
    {
        return rect.origin.y + rect.size.height;
    }
    
    static inline double MAMapRectGetWidth(MAMapRect rect)
    {
        return rect.size.width;
    }
    
    static inline double MAMapRectGetHeight(MAMapRect rect)
    {
        return rect.size.height;
    }
    
    static inline BOOL MAMapPointEqualToPoint(MAMapPoint point1, MAMapPoint point2) {
        return point1.x == point2.x && point1.y == point2.y;
    }
    
    static inline BOOL MAMapSizeEqualToSize(MAMapSize size1, MAMapSize size2) {
        return size1.width == size2.width && size1.height == size2.height;
    }
    
    static inline BOOL MAMapRectEqualToRect(MAMapRect rect1, MAMapRect rect2) {
        return
        MAMapPointEqualToPoint(rect1.origin, rect2.origin) &&
        MAMapSizeEqualToSize(rect1.size, rect2.size);
    }
    
    static inline BOOL MAMapRectIsNull(MAMapRect rect) {
        return isinf(rect.origin.x) || isinf(rect.origin.y);
    }
    
    static inline BOOL MAMapRectIsEmpty(MAMapRect rect) {
        return MAMapRectIsNull(rect) || (rect.size.width == 0.0 && rect.size.height == 0.0);
    }
    
    static inline NSString *MAStringFromMapPoint(MAMapPoint point) {
        return [NSString stringWithFormat:@"{%.1f, %.1f}", point.x, point.y];
    }
    
    static inline NSString *MAStringFromMapSize(MAMapSize size) {
        return [NSString stringWithFormat:@"{%.1f, %.1f}", size.width, size.height];
    }
    
    static inline NSString *MAStringFromMapRect(MAMapRect rect) {
        return [NSString stringWithFormat:@"{%@, %@}", MAStringFromMapPoint(rect.origin), MAStringFromMapSize(rect.size)];
    }
    
    ///坐标系类型枚举
    typedef NS_ENUM(NSUInteger, MACoordinateType)
    {
        MACoordinateTypeBaidu = 0,  ///< Baidu
        MACoordinateTypeMapBar,     ///< MapBar
        MACoordinateTypeMapABC,     ///< MapABC
        MACoordinateTypeSoSoMap,    ///< SoSoMap
        MACoordinateTypeAliYun,     ///< AliYun
        MACoordinateTypeGoogle,     ///< Google
        MACoordinateTypeGPS,        ///< GPS
    };
    
    /**
     * @brief 转换目标经纬度为高德坐标系
     * @param coordinate 待转换的经纬度
     * @param type       坐标系类型
     * @return 高德坐标系经纬度
     */
    extern CLLocationCoordinate2D MACoordinateConvert(CLLocationCoordinate2D coordinate, MACoordinateType type) __attribute((deprecated("已废弃，使用AMapFoundation中关于坐标转换的接口")));
    
    /**
     * @brief 获取矢量坐标方向
     * @param fromCoord 矢量坐标起点
     * @param toCoord   矢量坐标终点
     * @return 方向，详情参考系统 CLLocationDirection
     */
    extern CLLocationDirection MAGetDirectionFromCoords(CLLocationCoordinate2D fromCoord, CLLocationCoordinate2D toCoord);
    
    /**
     * @brief 获取矢量坐标方向
     * @param fromPoint 矢量坐标起点
     * @param toPoint   矢量坐标终点
     * @return 方向，详情参考系统 CLLocationDirection
     */
    extern CLLocationDirection MAGetDirectionFromPoints(MAMapPoint fromPoint, MAMapPoint toPoint);
    
    /**
     * @brief 获取点到线的垂直距离
     * @param point 起点
     * @param lineBegin 线的起点
     * @param lineEnd   线的终点
     * @return 距离，单位米
     */
    extern double MAGetDistanceFromPointToLine(MAMapPoint point, MAMapPoint lineBegin, MAMapPoint lineEnd);
    
#ifdef __cplusplus
}
#endif

///utils方法，方便c结构体对象和NSValue对象间相互转化
@interface NSValue (NSValueMAGeometryExtensions)

/**
 * @brief 创建 MAMapPoint 的NSValue对象
 * @param mapPoint MAMapPoint结构体对象
 * @return NSValue对象
 */
+ (NSValue *)valueWithMAMapPoint:(MAMapPoint)mapPoint;

/**
 * @brief 创建 MAMapSize 的NSValue对象
 * @param mapSize MAMapSize结构体对象
 * @return NSValue对象
 */
+ (NSValue *)valueWithMAMapSize:(MAMapSize)mapSize;

/**
 * @brief 创建 MAMapRect 的NSValue对象
 * @param mapRect MAMapRect结构体对象
 * @return NSValue对象
 */
+ (NSValue *)valueWithMAMapRect:(MAMapRect)mapRect;

/**
 * @brief 创建 CLLocationCoordinate2D 的NSValue对象
 * @param coordinate CLLocationCoordinate2D结构体对象
 * @return NSValue对象
 */
+ (NSValue *)valueWithMACoordinate:(CLLocationCoordinate2D)coordinate;

/**
 @brief 返回NSValue对象包含的MAMapPoint结构体对象
 @return 当前对象包含的MAMapPoint结构体对象
 */
- (MAMapPoint)MAMapPointValue;

/**
 @brief 返回NSValue对象包含的MAMapSize结构体对象
 @return 当前对象包含的MAMapSize结构体对象
 */
- (MAMapSize)MAMapSizeValue;

/**
 @brief 返回NSValue对象包含的MAMapRect结构体对象
 @return 当前对象包含的MAMapRect结构体对象
 */
- (MAMapRect)MAMapRectValue;

/**
 @brief 返回NSValue对象包含的CLLocationCoordinate2D结构体对象
 @return 当前对象包含的CLLocationCoordinate2D结构体对象
 */
- (CLLocationCoordinate2D)MACoordinateValue;

@end
