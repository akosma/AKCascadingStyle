//
//  AKCascadingStyle.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "AKCascadingStyle.h"
#import "NSObject+AKCascadingStyle.h"

@implementation AKCascadingStyle

@synthesize font = _font;
@synthesize textColor = _textColor;
@synthesize backgroundColor = _backgroundColor;
@synthesize tintColor = _tintColor;

#pragma mark -
#pragma mark Class methods

+ (id)style
{
    return [[[[self class] alloc] init] autorelease];
}

+ (id)styleFromObject:(id)object
{
    id style = [[self class] style];
    [style setValuesFromObject:object];
    return style;
}

- (id)init
{
    if (self = [super init])
    {
        // Default values, as specified in UIKit's documentation
        self.font = [UIFont systemFontOfSize:17.0];
        self.textColor = [UIColor blackColor];
        self.backgroundColor = [UIColor whiteColor];
        self.tintColor = nil;
    }
    return self;
}

- (void)dealloc
{
    self.font = nil;
    self.textColor = nil;
    self.backgroundColor = nil;
    self.tintColor = nil;
    
    [super dealloc];
}

- (void)applyToObject:(id)object
{
    if ([object respondsToSelector:@selector(setFont:)])
    {
        [object setFont:self.font];
    }
    if ([object respondsToSelector:@selector(setTextColor:)])
    {
        [object setTextColor:self.textColor];
    }
    if ([object respondsToSelector:@selector(setBackgroundColor:)])
    {
        [object setBackgroundColor:self.backgroundColor];
    }
    if ([object respondsToSelector:@selector(setTintColor:)])
    {
        [object setTintColor:self.tintColor];
    }
}

- (void)setValuesFromObject:(id)object
{
    if ([object respondsToSelector:@selector(font)])
    {
        self.font = [object font];
    }
    if ([object respondsToSelector:@selector(textColor)])
    {
        self.textColor = [object textColor];
    }
    if ([object respondsToSelector:@selector(backgroundColor)])
    {
        self.backgroundColor = [object backgroundColor];
    }
    if ([object respondsToSelector:@selector(tintColor)])
    {
        self.tintColor = [object tintColor];
    }
}

@end
