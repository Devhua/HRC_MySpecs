//
//  ViewController.m
//  PodTestDemo
//
//  Created by 华润策 on 2018/3/15.
//  Copyright © 2018年 华润策. All rights reserved.
//

#import "ViewController.h"
#import "NSURLSession+NetworkMonitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [NSURLSession networkBeginMonitor];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://v.juhe.cn/toutiao/index"]];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *ss= [NSJSONSerialization JSONObjectWithData:data options:NSUTF8StringEncoding error:nil];
        NSLog(@"block完成！%@",ss);
    }];
    //    NSURLSessionDataTask *task = [session dataTaskWithRequest:request];
    [task resume];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
