//
//  DetailViewController.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright 2010 akosma software. All rights reserved.
//

#import "DetailViewController.h"
#import "SimpleStyle.h"
#import "ShadowStyle.h"
#import "NSObject+AKCascadingStyle.h"

@interface DetailViewController ()

@property (nonatomic, retain) SimpleStyle *firstStyle;
@property (nonatomic, retain) ShadowStyle *secondStyle;
@property (nonatomic) BOOL showingFirstStyle;

@end


@implementation DetailViewController

@synthesize titleLabel = _titleLabel;
@synthesize contentsTextView = _contentsTextView;
@synthesize button = _button;
@synthesize item = _item;
@synthesize firstStyle = _firstStyle;
@synthesize secondStyle = _secondStyle;
@synthesize showingFirstStyle = _showingFirstStyle;

- (void)dealloc
{
    self.titleLabel = nil;
    self.contentsTextView = nil;
    self.button = nil;
    self.item = nil;
    self.firstStyle = nil;
    self.secondStyle = nil;

    [super dealloc];
}

- (void)viewDidLoad 
{
    [super viewDidLoad];
    self.title = @"Detail";
    self.titleLabel.text = [self.item objectForKey:@"title"];
    self.contentsTextView.text = [self.item objectForKey:@"text"];
    
    self.firstStyle = [SimpleStyle style];
    self.secondStyle = [ShadowStyle style];
    self.showingFirstStyle = YES;
    [self swapStyle:self];
}

- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark IBAction methods

- (IBAction)swapStyle:(id)sender
{
    self.showingFirstStyle = !self.showingFirstStyle;
    if (self.showingFirstStyle)
    {
        self.titleLabel.cascadingStyle = self.firstStyle;
        self.contentsTextView.cascadingStyle = self.secondStyle;
    }
    else 
    {
        self.titleLabel.cascadingStyle = self.secondStyle;
        self.contentsTextView.cascadingStyle = self.firstStyle;
    }
}

@end
