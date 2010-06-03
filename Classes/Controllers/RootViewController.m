//
//  RootViewController.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright akosma software 2010. All rights reserved.
//

#import "RootViewController.h"
#import "DetailViewController.h"
#import "UIFont+AKCascadingStyle.h"
#import "UIColor+AKCascadingStyle.h"

@interface RootViewController ()

@property (nonatomic, retain) NSArray *data;

@end


@implementation RootViewController

@synthesize data = _data;

#pragma mark -
#pragma mark View lifecycle

- (void)dealloc 
{
    self.data = nil;
    [super dealloc];
}

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.tintColor = [UIColor navigationBarColor];
    self.title = @"List";
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
    self.data = [NSArray arrayWithContentsOfFile:path];
    self.tableView.rowHeight = 50.0;
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return [self.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                       reuseIdentifier:CellIdentifier] autorelease];
        cell.textLabel.font = [UIFont cellTitleFont];
        cell.textLabel.textColor = [UIColor cellTitleColor];
        cell.detailTextLabel.font = [UIFont cellSubtitleFont];
        cell.detailTextLabel.textColor = [UIColor cellSubtitleColor];
    }
    
    NSDictionary *dict = [self.data objectAtIndex:indexPath.row];
    cell.textLabel.text = [dict objectForKey:@"title"];
    cell.detailTextLabel.text = [dict objectForKey:@"subtitle"];

    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    NSDictionary *dict = [self.data objectAtIndex:indexPath.row];
    DetailViewController *controller = [[[DetailViewController alloc] init] autorelease];
    controller.item = dict;
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
}

@end
