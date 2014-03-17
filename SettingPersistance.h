//
//  SettingPersistance.h
//  SecondApp
//
//  Created by admin on 14-3-13.
//  Copyright (c) 2014年 admin. All rights reserved.
//
#define kField1Key @"Field1"
#define kField2Key @"Field2"
#define kField3Key @"Field3"
#define kField4Key @"Field4"
#import <Foundation/Foundation.h>

@interface SettingPersistance : NSObject<NSCoding,NSCopying>
@property(nonatomic) int fontColor;
@property(nonatomic) int bgColor;
@property(nonatomic) float fontSize;
@property(nonatomic) float Scrbrightness;

@end
