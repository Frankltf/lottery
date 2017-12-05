//
//  XMGTabBarViewController.m
//  Lottery
//
//  Created by admin on 2017/12/5.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGTabBarViewController.h"
#import "XMGNavigationViewController.h"
#import "XMGHallTableViewController.h"
#import "XMGDiscoverTableViewController.h"
#import "XMGArenaViewController.h"
#import "XMGHistoryTableViewController.h"
#import "XMGMyViewController.h"

@interface XMGTabBarViewController ()

@end

@implementation XMGTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabBar];
}

-(void)setupTabBar
{
    XMGHallTableViewController *hall=[[XMGHallTableViewController alloc]init];
    XMGNavigationViewController *nav1=[[XMGNavigationViewController alloc]initWithRootViewController:hall];
    [self setupTabBarTitleWith:nav1 titleName:@"购票大厅" imageName:@"tabBar_essence_icon" selectImageName:@"tabBar_essence_click_icon"];
    [self addChildViewController:nav1];
    
    XMGDiscoverTableViewController *discover=[[XMGDiscoverTableViewController alloc]init];
    XMGNavigationViewController *nav2=[[XMGNavigationViewController alloc]initWithRootViewController:discover];
    [self setupTabBarTitleWith:nav2 titleName:@"发现" imageName:@"tabBar_friendTrends_icon" selectImageName:@"tabBar_friendTrends_click_icon"];
    [self addChildViewController:nav2];
    
    XMGArenaViewController *arena=[[XMGArenaViewController alloc]init];
    XMGNavigationViewController *nav3=[[XMGNavigationViewController alloc]initWithRootViewController:arena];
    [self setupTabBarTitleWith:nav3 titleName:@"竞技场" imageName:@"tabBar_me_icon" selectImageName:@"tabBar_me_click_icon"];
    [self addChildViewController:nav3];
    
    XMGHistoryTableViewController *history=[[XMGHistoryTableViewController alloc]init];
    XMGNavigationViewController *nav4=[[XMGNavigationViewController alloc]initWithRootViewController:history];
    [self setupTabBarTitleWith:nav4 titleName:@"开奖信息" imageName:@"tabBar_new_icon" selectImageName:@"tabBar_new_click_icon"];
    [self addChildViewController:nav4];
    
    
    XMGMyViewController *my=[[XMGMyViewController alloc] init];
    XMGNavigationViewController *nav5=[[XMGNavigationViewController alloc]initWithRootViewController:my];
    [self setupTabBarTitleWith:nav5 titleName:@"我的彩票" imageName:@"tabBar_new_icon" selectImageName:@"tabBar_new_click_icon"];
    [self addChildViewController:nav5];
    
}

/**
 添加tabbar标题图片
 */
-(void)setupTabBarTitleWith:(UINavigationController *)nav titleName:(NSString *)titleName imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName
{
    if(titleName){
        nav.tabBarItem.title=titleName;
        NSMutableDictionary *dic=[NSMutableDictionary dictionary];
        dic[NSFontAttributeName]=[UIFont systemFontOfSize:13];
        [nav.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
        
        NSMutableDictionary *dic2=[NSMutableDictionary dictionary];
        dic2[NSForegroundColorAttributeName]=[UIColor blackColor];
        [nav.tabBarItem setTitleTextAttributes:dic2 forState:UIControlStateSelected];
    }
    nav.tabBarItem.image=[UIImage imageNamed:imageName];
    nav.tabBarItem.selectedImage=[UIImage imageNamed:selectImageName];
}
@end
