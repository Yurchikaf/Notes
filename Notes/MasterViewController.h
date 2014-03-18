//
//  MasterViewController.h
//  Notes
//
//  Created by Andrey on 8/20/13.
//  Copyright (c) 2013 EnjoyTheApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
