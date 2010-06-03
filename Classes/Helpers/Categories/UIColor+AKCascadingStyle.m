//
//  UIColor+AKCascadingStyle.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "UIColor+AKCascadingStyle.h"

@implementation UIColor (AKCascadingStyle)

+ (UIColor *)cellTitleColor
{
    return [UIColor blueColor];
}

+ (UIColor *)cellSubtitleColor
{
    return [UIColor redColor];
}

+ (UIColor *)detailTitleColor
{
    return [UIColor brownColor];
}

+ (UIColor *)detailTextColor
{
    return [UIColor grayColor];
}

+ (UIColor *)navigationBarColor
{
    return [UIColor darkGrayColor];
}

@end
