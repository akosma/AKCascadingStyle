//
//  SimpleStyle.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "SimpleStyle.h"

@implementation SimpleStyle

- (id)init
{
    if (self = [super init])
    {
        self.font = [UIFont fontWithName:@"Helvetica" size:12.0];
        self.backgroundColor = [UIColor yellowColor];
        self.textColor = [UIColor redColor];
    }
    return self;
}

@end
