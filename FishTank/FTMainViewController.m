//
//  FTMainViewController.m
//  FishTank
//
//  Created by 天津财经大学信科二 on 16/7/13.
//  Copyright © 2016年 pikaqiu. All rights reserved.
//

#import "FTMainViewController.h"
#import "FTUserViewController.h"

@interface FTMainViewController ()


@end

@implementation FTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    self.view.backgroundColor = [UIColor greenColor];
    
 
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(jumpIntoUserInfoPageClick)];
    [leftBtn setTitle:@"取消"];
    self.navigationItem.leftBarButtonItem  = leftBtn;
        
    // Do any additional setup after loading the view.
}

#pragma  mark - getters

-(void)jumpIntoUserInfoPageClick{
    
    FTUserViewController *userVC = [[FTUserViewController alloc]initWithTitle:@"我的"];
    
    [self.navigationController pushViewController:userVC animated:YES];
}









@end
