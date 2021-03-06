//
//  ViewController.m
//  TAPageControl
//
//  Created by Tanguy Aladenise on 2015-01-21.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// Controllers
#import "SettingsVC.h"
#import "Common.h"
#import "ProductCell.h"
#import "WantletCell.h"
#import "HomeVC.h"
#import "ProductDetailsVC.h"
#import "ContactUsVC.h"
#import "CancelAccountVC.h"
#import "SearchVC.h"
#import "BrandsAndStoreVC.h"

@interface SettingsVC ()
{
   
    IBOutlet UIButton *btn_bot_home;
    IBOutlet UIButton *btn_bot_search;
    IBOutlet UIButton *btn_bot_account;
    IBOutlet UIButton *btn_bot_other;
}
@end


@implementation SettingsVC

#pragma mark - Lifecycle
- (void)initialize
{
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//---Initialize---
    [self initialize];
}




//************************//
//*      UI Control      *//
//************************//
- (IBAction)clickHomeButton:(id)sender {
    HomeVC *vc = [[HomeVC alloc] init];
    UINavigationController *navigationController = self.navigationController;
    NSMutableArray *activeViewControllers=[[NSMutableArray alloc] initWithArray: navigationController.viewControllers] ;
    [activeViewControllers removeLastObject];
    
    // Reset the navigation stack
    [navigationController setViewControllers:activeViewControllers];
    [navigationController pushViewController:vc animated:NO];

}
- (IBAction)clickSearchButton:(id)sender {
    SearchVC *vc = [[SearchVC alloc] init];
    UINavigationController *navigationController = self.navigationController;
    NSMutableArray *activeViewControllers=[[NSMutableArray alloc] initWithArray: navigationController.viewControllers] ;
    [activeViewControllers removeLastObject];
    
    // Reset the navigation stack
    [navigationController setViewControllers:activeViewControllers];
    [navigationController pushViewController:vc animated:NO];
}
- (IBAction)clickAccountButton:(id)sender {
    
}
- (IBAction)clickOtherButton:(id)sender {
    BrandsAndStoreVC *vc = [[BrandsAndStoreVC alloc] init];
    [self.navigationController pushViewController:vc animated:NO];
}

- (IBAction)clickCancelButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)clickContactUs:(id)sender {
    ContactUsVC *vc = [[ContactUsVC alloc] init];
    [self.navigationController pushViewController:vc animated:NO];
}
- (IBAction)clickCancelAccount:(id)sender {
    CancelAccountVC *vc = [[CancelAccountVC alloc] init];
    [self.navigationController pushViewController:vc animated:NO];
}


@end
