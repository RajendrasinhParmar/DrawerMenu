//
//  MenuViewController.h
//  DrawerMenu
//
//  Created by Rajendrasinh Parmar on 30/08/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuRow.h"

@class ViewController;

@interface MenuViewController : UITableViewController{
    NSArray *MenuItems;
    UIStoryboard *storyboard;
}


@property (nonatomic,weak) MenuViewController *menuViewController;
@property (nonatomic,weak) ViewController *menuDrawerViewController;

@end
