//
//  Gravity.h
//  GyroscopeTest
//
//  Created by Seven-Augus on 16/8/19.
//  Copyright © 2016年 Seven-Augus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>

@interface Gravity : NSObject

@property (nonatomic, strong) CMMotionManager *motionManager;

/**
 *   时间间隔
 */
@property (nonatomic, assign) float timeInterval;

/**
 *   单例
 */
+ (Gravity *)shareGravity;


   // 开始重力加速度

- (void)startAccelerometerUpdatesBlocks:(void(^)(float x, float y, float z))completeBlock;


 //   开始重力感应
 
-(void)startGyroUpdatesBlock:(void(^)(float x, float y, float z))completeBlock;

//  @param 开始陀螺仪
 
-(void)startDeviceMotionUpdatesBlock:(void(^)(float x, float y, float z))completeBlock;

/**
 *   停止
 */
-(void)stop;

@end

//file:///Users/liam/Desktop/myGitHub/ZWCycleImageView/ZWCycleImageView/MYControllers/YZWFirstViewController/ZWCameraDemo/GravityUtility/UILabel+tipLabel.h: warning: Missing file: /Users/liam/Desktop/myGitHub/ZWCycleImageView/ZWCycleImageView/MYControllers/YZWFirstViewController/ZWCameraDemo/GravityUtility/UILabel+tipLabel.h is missing from working copy

