//
//  SettingPersistance.m
//  SecondApp
//
//  Created by admin on 14-3-13.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "SettingPersistance.h"

@implementation SettingPersistance

#pragma mark
-(void)encoderWithCoder:(NSCoder*)encoder
{
    [encoder encodeInt:_fontColor forKey:kField1Key];
    [encoder encodeInt:_bgColor forKey:kField2Key];
    [encoder encodeFloat:_fontSize forKey:kField3Key];
    [encoder encodeFloat:_Scrbrightness   forKey:kField4Key];
}
-(id) initWithCoder:(NSCoder *)aDecoder
{
    if (self==[super init]) {
        self.fontColor=[aDecoder decodeIntegerForKey:kField1Key];
        self.bgColor=[aDecoder decodeIntegerForKey:kField2Key];
        self.fontSize=[aDecoder decodeFloatForKey:kField3Key];
        self.Scrbrightness=[aDecoder decodeFloatForKey:kField4Key];
    }
    return self;
}
#pragma mark-
#pragma mark NSCopying
-(id) copyWithZone:(NSZone *)zone
{
    SettingPersistance *copy=[[[self class ] allocWithZone:zone] init];
    copy.fontColor=self.fontColor;
    copy.bgColor=self.bgColor;
    copy.fontSize=self.fontSize;
    copy.Scrbrightness=self.Scrbrightness;
    return copy;
}
@end
