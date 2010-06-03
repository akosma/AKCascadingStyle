//
//  ShadowStyle.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "ShadowStyle.h"

@implementation ShadowStyle

@synthesize shadowOffset = _shadowOffset;
@synthesize shadowColor = _shadowColor;

- (id)init
{
    if (self = [super init])
    {
        self.font = [UIFont boldSystemFontOfSize:20.0];
        self.backgroundColor = [UIColor whiteColor];
        self.textColor = [UIColor blackColor];
        
        self.shadowColor = [UIColor grayColor];
        self.shadowOffset = CGSizeMake(2.0, 2.0);
    }
    return self;
}

- (void)dealloc
{
    self.shadowColor = nil;
    
    [super dealloc];
}

#pragma mark -
#pragma mark Overridden methods

- (void)applyToObject:(id)object
{
    [super applyToObject:object];
    if ([object respondsToSelector:@selector(setShadowColor:)])
    {
        [object setShadowColor:self.shadowColor];
    }
    if ([object respondsToSelector:@selector(setShadowOffset:)])
    {
        [object setShadowOffset:self.shadowOffset];
    }
}

- (void)setValuesFromObject:(id)object
{
    [super setValuesFromObject:object];
    if ([object respondsToSelector:@selector(shadowColor)])
    {
        self.shadowColor = [object shadowColor];
    }
    if ([object respondsToSelector:@selector(shadowOffset)])
    {
        self.shadowOffset = [object shadowOffset];
    }
}

@end
