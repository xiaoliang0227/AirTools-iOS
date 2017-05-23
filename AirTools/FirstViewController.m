//
//  FirstViewController.m
//  AirTools
//
//  Created by 赵永亮 on 2017/5/22.
//  Copyright © 2017年 赵永亮. All rights reserved.
//

#import "FirstViewController.h"
#import <WebKit/WKWebView.h>

#define URL_AIR_NEWS @"http://3g.163.com/touch/air?dataversion=A&version=v_standard"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *content;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void) viewDidAppear:(BOOL)animated {
    [_content loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URL_AIR_NEWS]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
