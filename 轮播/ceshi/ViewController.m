//
//  ViewController.m
//  ceshi
//
//  Created by ma c on 16/1/13.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "SDCycleScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *imageaa = @[
                         @"h1.jpg",
                         @"h1.jpg",
                         @"h1.jpg",
                         @"h1.jpg",
                         @"h1.jpg"
                         ];
    NSArray *imagesURLStrings = @[
                                 @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                                 @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                                 @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
                                 ];
    
    SDCycleScrollView *cy = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 60, self.view.frame.size.width, 180) imagesGroup:imageaa URL:NO time:1];
    [self.view addSubview:cy];
    
    SDCycleScrollView *cy2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 280, self.view.frame.size.width, 180) imagesGroup:imagesURLStrings URL:YES time:2];
    [self.view addSubview:cy2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
