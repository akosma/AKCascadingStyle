//
//  NSObject+AKCascadingStyle.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "NSObject+AKCascadingStyle.h"
#import "AKCascadingStyle.h"

@implementation NSObject (AKCascadingStyle)

@dynamic cascadingStyle;

- (void)setCascadingStyle:(AKCascadingStyle *)style
{
    [style applyToObject:self];
}

- (id)cascadingStyle
{
    return [AKCascadingStyle styleFromObject:self];
}

@end
