//
//  UINavigationController+Custom.m
//  shop
//
//  Created by zhangwenqiang on 16/6/13.
//  Copyright © 2016年 ishi. All rights reserved.
//

#import "UINavigationController+Custom.h"
#import "BaseAPI.h"

@interface UINavigationController()

@end

@implementation UINavigationController (Custom)

-(void)viewDidLoad{
    [super viewDidLoad];

    if ([self isKindOfClass:[UIImagePickerController class]]) {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];//此方法过期
        
        [self.navigationBar setBarTintColor:[UIColor whiteColor]];
        
    } else {
        
        //默认的黑色（UIStatusBarStyleDefault）
        //白色（UIStatusBarStyleLightContent）
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];//此方法过期
        
        [self.navigationBar setBarTintColor :[UIColor colorWithRed:0.898 green:0.251 blue:0.282 alpha:1.00]];//[UIColor colorWithRed:0.898 green:0.251 blue:0.282 alpha:1.00]
        
        //[self.navigationBar setBarStyle:UIBarStyleBlack];
        
        //[self preferredStatusBarStyle];
        
        [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                                     NSFontAttributeName:[UIFont boldSystemFontOfSize:20]}];
    
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
     if ([self isKindOfClass:[UIImagePickerController class]]) {
         [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];//此方法过期
     }
}

- (void)cancel:(UIBarButtonItem*)sender{
    
    [self dismissViewControllerAnimated:YES completion:^{
       
        self.navigationItem.rightBarButtonItem = nil;
    }];
}

@end
