//
//  XMGNavigationViewController.m
//  Lottery
//
//  Created by admin on 2017/12/5.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGNavigationViewController.h"

@interface XMGNavigationViewController ()

@end

@implementation XMGNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 重写push方法
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(self.childViewControllers.count>0){
        [viewController setHidesBottomBarWhenPushed:YES];
    }
    [super pushViewController:viewController animated:animated];
}

@end
