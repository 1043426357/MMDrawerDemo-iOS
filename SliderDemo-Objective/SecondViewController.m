//
//  SecondViewController.m
//  SliderDemo-Objective
//
//  Created by 余新闻 on 15-1-9.
//  Copyright (c) 2015年 Adways. All rights reserved.
//

#import "SecondViewController.h"

#import "UIViewController+MMDrawerController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)viewWillAppear:(BOOL)animated
{
     [self.mm_drawerController setEnableGesture:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
