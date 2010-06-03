//
//  AKCascadingStyle.h
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKCascadingStyle : NSObject 
{
@private
    UIFont *_font;
    UIColor *_textColor;
    UIColor *_backgroundColor;
    UIColor *_tintColor;
}

@property (nonatomic, retain) UIFont *font;
@property (nonatomic, retain) UIColor *textColor;
@property (nonatomic, retain) UIColor *backgroundColor;
@property (nonatomic, retain) UIColor *tintColor;

+ (id)style;
+ (id)styleFromObject:(id)object;

- (void)applyToObject:(id)object;
- (void)setValuesFromObject:(id)object;

@end
