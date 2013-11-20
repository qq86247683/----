//
//  ViewController.m
//  双视图
//
//  Created by xingyun on 13-9-30.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    window = [[UIWindow alloc]initWithFrame:CGRectMake(321, 0, 320, 460)];

    myView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    
    [myView setBackgroundColor:[UIColor redColor]];
    myView.alpha = 0.7;
    
    [window addSubview:myView];
    
    [window makeKeyAndVisible];
    [self.view addSubview:window];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"切换" forState:UIControlStateNormal];

    [button setFrame:CGRectMake(30, 30, 40, 20)];
    [button addTarget:self action:@selector(chageView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)chageView
{
    [UIView animateWithDuration:0.5 animations:^{
        [window setFrame:CGRectMake(0, 0, 320, 460)];
    }];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(30, 60, 42, 20)];
    [button setBackgroundColor:[UIColor blackColor]];
    [myView addSubview:button];
    
    [button addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
}

-(void)goBack
{
    [UIView animateWithDuration:0.5 animations:^{
        [myView setFrame:CGRectMake(321, 0, 320, 460)];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
