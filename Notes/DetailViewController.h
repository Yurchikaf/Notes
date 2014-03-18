//
//  DetailViewController.h
//  Notes
//
//  Created by Andrey on 8/20/13.
//  Copyright (c) 2013 EnjoyTheApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak,nonatomic) IBOutlet UITextView *tView;

@end
