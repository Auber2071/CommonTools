//
//  UIBarButtonItem+BNCExtension.m
//  TemporaryDemo
//
//  Created by hankai on 2017/11/3.
//  Copyright © 2017年 Vencent. All rights reserved.
//

#import "UIBarButtonItem+BNCExtension.h"
#import "UIView+BNCExtension.h"


@implementation UIBarButtonItem (BNCExtension)
+(UIBarButtonItem *)itemWithDefaultImgName:(NSString *)defaultImgName highLightImgName:(NSString *)highLightImgName target:(id)target action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:defaultImgName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highLightImgName] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}
+(UIBarButtonItem *)cycloItemWithDefaultImgName:(NSString *)defaultImgName highLightImgName:(NSString *)highLightImgName target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:defaultImgName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highLightImgName] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    button.layer.cornerRadius = button.width/2.f;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}
+(UIBarButtonItem *)cycloItemWithDefaultImg:(UIImage *)defaultImg highLightImg:(UIImage *)highLightImg target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:defaultImg forState:UIControlStateNormal];
    [button setBackgroundImage:highLightImg forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    button.layer.cornerRadius = button.width/2.f;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}
@end
