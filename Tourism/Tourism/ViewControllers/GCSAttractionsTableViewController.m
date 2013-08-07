//
//  GCSAttractionsTableViewController.m
//  Tourism
//
//  Created by lidier on 8/2/13.
//  Copyright (c) 2013 GoCube Software. All rights reserved.
//

#import "GCSAttractionsTableViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GCSAttractionsTableViewController ()

@end

@implementation GCSAttractionsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"blackTexture"] forBarMetrics:UIBarMetricsDefault];
    
    CGRect frame = CGRectMake(0, 0, 100, 44);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"AvenirNextCondensed-Regular" size:30];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.text = @"Discover";
    
    self.navigationItem.titleView = label;
    
    
    
    self.tableView.backgroundView = [ [UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"blackTexture.jpg"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self intereststableView:tableView numberOfRowsInSection:section];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self intereststableView:tableView cellForRowAtIndexPath:indexPath];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self intereststableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma mark UTILITIES

- (id) initGradientView{
    //imageView.alpha = 0.9;
    //draw gradient on top
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 88)];
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.startPoint = (CGPoint){0,0.5};
    gradient.endPoint = (CGPoint){1,0.5};
    gradient.frame = view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite: 0.0 alpha: 0.7] CGColor], (id)[[UIColor colorWithWhite: 0.1 alpha: 0.7] CGColor], (id)[[UIColor colorWithWhite: 0.0 alpha: 0.0] CGColor], nil];
    [view.layer insertSublayer:gradient atIndex:0];
    return (id) view;
}

#pragma mark - PLACES


- (NSInteger)placestableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *) placestableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"attractionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *title;
    NSString *detail;
    
    switch (indexPath.row) {
        case 0:
            title = @"Manuel Antonio";
            detail = @"National Park";
            break;
        case 1:
            title = @"Reventason";
            detail = @"River";
            break;
        case 2:
            title = @"Arenal Volcano";
            detail = @"National Park";
            break;
        case 3:
            title = @"Puerto Viejo";
            detail = @"Harbor";
            break;
        case 4:
            title = @"Río Celeste";
            detail = @"National Park";
            break;
        case 5:
            title = @"Chirripó";
            detail = @"National Park";
            break;
            
            
        default:
            break;
    }
    
    cell.textLabel.text = title;
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.text = detail;
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void)placestableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor blackColor];
    
    NSString *title;
    
    switch (indexPath.row) {
        case 0:
            title = @"beach.jpg";
            break;
        case 1:
            title = @"kayak.jpg";
            break;
        case 2:
            title = @"volcano.jpg";
            break;
        case 3:
            title = @"sunset.jpg";
            break;
        case 4:
            title = @"river.jpg";
            break;
        case 5:
            title = @"landscape.jpg";
            break;
            
        default:
            break;
    }
    
    UIImageView *imageView = [ [UIImageView alloc] initWithImage:[ [UIImage imageNamed:title] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ];
    [imageView addSubview: (id)[self initGradientView]];
    
    cell.backgroundColor = [UIColor clearColor];
    cell.backgroundView = imageView;
    //cell.selectedBackgroundView = [imageView copy];
    [cell.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [cell.layer setBorderWidth:1];
}



#pragma mark - INTERESTS

- (NSInteger)intereststableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}


- (UITableViewCell *) intereststableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"attractionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *title;
    NSString *detail;
    
    switch (indexPath.row) {
        case 0:
            title = @"Manuel Antonio";
            detail = @"National Park";
            break;
        case 1:
            title = @"Reventason";
            detail = @"River";
            break;
        case 2:
            title = @"Arenal Volcano";
            detail = @"National Park";
            break;
        case 3:
            title = @"Puerto Viejo";
            detail = @"Harbor";
            break;
        case 4:
            title = @"Río Celeste";
            detail = @"National Park";
            break;
        case 5:
            title = @"Chirripó";
            detail = @"National Park";
            break;
            
            
        default:
            break;
    }
    
    cell.textLabel.text = title;
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.text = detail;
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void) intereststableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor blackColor];
    
    NSString *title;
    
    switch (indexPath.row) {
        case 0:
            title = @"beach.jpg";
            break;
        case 1:
            title = @"kayak.jpg";
            break;
        case 2:
            title = @"volcano.jpg";
            break;
        case 3:
            title = @"sunset.jpg";
            break;
        case 4:
            title = @"river.jpg";
            break;
        case 5:
            title = @"landscape.jpg";
            break;
            
        default:
            break;
    }
    
    UIImageView *imageView = [ [UIImageView alloc] initWithImage:[ [UIImage imageNamed:title] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ];
    [imageView addSubview: (id)[self initGradientView]];
    
    cell.backgroundColor = [UIColor clearColor];
    cell.backgroundView = imageView;
    //cell.selectedBackgroundView = [imageView copy];
    [cell.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [cell.layer setBorderWidth:1];
}


@end
