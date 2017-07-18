//
//  ViewController.m
//  iOSHttps
//
//  Created by anyware on 17/7/18.
//  Copyright © 2017年 ioshttps. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "AFHTTPSessionManager+CredentialAuth.h"
#import "AFHTTPSessionManager+Auth.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *superview = self.view;
    int padding = 10;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIButton *btn = [UIButton new];
    [btn setTitle:@"HTTPS" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [superview addSubview:btn];
    [btn addTarget:self action:@selector(lanuchReq) forControlEvents:UIControlEventTouchUpInside];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview.mas_top).offset(padding * 2);
        make.left.equalTo(superview.mas_left).offset(padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
        make.size.height.equalTo(@50);
    }];
}

-(void)lanuchReq{
//    NSSet<NSData *> *certs = [AFSecurityPolicy certificatesInBundle:[NSBundle mainBundle]];
//    AFSecurityPolicy *policy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate withPinnedCertificates:certs];
//    [policy setAllowInvalidCertificates:YES];//允许自建证书
    
    NSString *url = @"https://192.168.40.240:8443/";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.securityPolicy = policy;
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"OK");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
