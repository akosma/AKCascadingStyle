//
//  ShadowStyle.h
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "AKCascadingStyle.h"

@interface ShadowStyle : AKCascadingStyle 
{
@private
    CGSize _shadowOffset;
    UIColor *_shadowColor;
}

@property (nonatomic) CGSize shadowOffset;
@property (nonatomic, retain) UIColor *shadowColor;

@end
