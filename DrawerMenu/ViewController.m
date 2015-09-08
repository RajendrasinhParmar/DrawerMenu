//
//  ViewController.m
//  DrawerMenu
//
//  Created by Rajendrasinh Parmar on 30/08/15.
//  Copyright (c) 2015 Rajendrasinh Parmar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIStoryboard *storyBoard;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(slideDrawer:) name:@"notifyButtonPressed" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"embedMenu"]) {
        MenuViewController *menuViewController = segue.destinationViewController;
        menuViewController.menuDrawerViewController = self;
        self.menuViewController = menuViewController;
    }
}


-(void)setContent:(UIViewController *)content{
    if (_content) {
        [_content.view removeFromSuperview];
        [_content removeFromParentViewController];
        
        content.view.frame = _content.view.frame;
    }
    
    _content = content;
    [self addChildViewController:_content];
    [_content didMoveToParentViewController:self];
    [self.view addSubview:_content.view];
    
    [self closeDrawer];
}

-(void)slideDrawer:(id)sender{
    if (self.content.view.frame.origin.x > 0) {
        [self closeDrawer];
    }else{
        [self openDrawer];
    }
}

-(void)openDrawer
{
    CGRect fm = self.content.view.frame;
    fm.origin.x = 240.0;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.content.view.frame = fm;
    }];
}

-(void)closeDrawer
{
    CGRect fm = self.content.view.frame;
    fm.origin.x = 0;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.content.view.frame = fm;
    }];
}

@end
