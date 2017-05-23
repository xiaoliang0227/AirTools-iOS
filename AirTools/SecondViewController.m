//
//  SecondViewController.m
//  AirTools
//
//  Created by 赵永亮 on 2017/5/22.
//  Copyright © 2017年 赵永亮. All rights reserved.
//

#import "SecondViewController.h"
#import <WebKit/WKWebView.h>

#define URL_CTRIP_AIR_TICKET @"http://m.ctrip.com/html5/flight/matrix/matrix.html?fromswift=C"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *content;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void) viewDidAppear:(BOOL)animated {
    [_content loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URL_CTRIP_AIR_TICKET]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
