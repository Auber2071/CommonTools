//
//  UIImage+HKTExtension.m
//  TemporaryDemo
//
//  Created by hankai on 2017/11/1.
//  Copyright © 2017年 Vencent. All rights reserved.
//

#import "UIImage+HKTExtension.h"

@implementation UIImage (HKTExtension)
+ (UIImage *)createImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end
