//
//  ButtonHandler.m
//  DrawerMenu
//
//  Created by Rajendrasinh Parmar on 30/08/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import "MenuButtonHandler.h"

@implementation MenuButtonHandler

-(IBAction)handleButtonClick:(id)sender{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyButtonPressed" object:self];
}

@end
