//
//  ThirdViewController.m
//  AirTools
//
//  Created by 赵永亮 on 2017/5/22.
//  Copyright © 2017年 赵永亮. All rights reserved.
//

#import "ThirdViewController.h"
#import <WebKit/WKWebView.h>

#define URL_CHIP_AIR_TICKET @"https://m.ctrip.com/webapp/flightactivity/assets/preciseLowprice/preciseLowprice.html?from=https%3A%2F%2Fm.ctrip.com%2Fhtml5%2F%3Fsourceid%3D497%26allianceid%3D4897%26sid%3D182042%26utm_source%3Dbaidu%26utm_medium%3Dcpc%26utm_campaign%3Dbaidu497%26sepopup%3D2"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *content;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"this is third view");
}

- (void) viewDidAppear:(BOOL)animated {
     [_content loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URL_CHIP_AIR_TICKET]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
