//
//  ViewController.h
//  DrawerMenu
//
//  Created by Rajendrasinh Parmar on 30/08/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuViewController.h"

@interface ViewController : UIViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@property (nonatomic,weak) MenuViewController *menuViewController;
@property (nonatomic,weak) ViewController *menuDrawerViewController;
@property (nonatomic,weak) UIViewController *content;

@end

