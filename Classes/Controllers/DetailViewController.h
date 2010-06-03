//
//  DetailViewController.h
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleStyle;
@class ShadowStyle;

@interface DetailViewController : UIViewController 
{
@private
    UILabel *_titleLabel;
    UITextView *_contentsTextView;
    UIButton *_button;
    NSDictionary *_item;
    SimpleStyle *_firstStyle;
    ShadowStyle *_secondStyle;
    BOOL _showingFirstStyle;
}

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UITextView *contentsTextView;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) NSDictionary *item;

- (IBAction)swapStyle:(id)sender;

@end
