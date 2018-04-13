//
//  UIButton+HKTImageTitleSpacing.h
//  MobilePortal
//
//  Created by hankai on 2017/11/15.
//  Copyright © 2017年 lotuscai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BNCButtonEdgeInsetsStyle) {
    BNCButtonEdgeInsetsStyleTop, // image在上，label在下
    BNCButtonEdgeInsetsStyleLeft, // image在左，label在右
    BNCButtonEdgeInsetsStyleBottom, // image在下，label在上
    BNCButtonEdgeInsetsStyleRight // image在右，label在左
};

@interface UIButton (HKTImageTitleSpacing)

/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)layoutButtonWithEdgeInsetsStyle:(BNCButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space;

@end
