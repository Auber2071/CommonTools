//
//  UIBarButtonItem+HKTExtension.h
//  TemporaryDemo
//
//  Created by hankai on 2017/11/3.
//  Copyright © 2017年 Vencent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HKTExtension)
+(UIBarButtonItem *)itemWithDefaultImgName:(NSString *)defaultImgName highLightImgName:(NSString *)highLightImgName target:(id)target action:(SEL)action;
+(UIBarButtonItem *)cycloItemWithDefaultImgName:(NSString *)defaultImgName highLightImgName:(NSString *)highLightImgName target:(id)target action:(SEL)action;

+(UIBarButtonItem *)cycloItemWithDefaultImg:(UIImage *)defaultImg highLightImg:(UIImage *)highLightImg target:(id)target action:(SEL)action;

@end
