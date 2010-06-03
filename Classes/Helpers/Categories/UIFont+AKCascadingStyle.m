//
//  UIFont+AKCascadingStyle.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "UIFont+AKCascadingStyle.h"

@implementation UIFont (AKCascadingStyle)

+ (UIFont *)cellTitleFont
{
    return [UIFont fontWithName:@"Courier" size:22.0];
}

+ (UIFont *)cellSubtitleFont
{
    return [UIFont boldSystemFontOfSize:15.0];
}

+ (UIFont *)detailTitleFont
{
    return [UIFont fontWithName:@"Verdana" size:40.0];
}

+ (UIFont *)detailTextFont
{
    return [UIFont systemFontOfSize:17.0];
}

@end
