//
//  WKWebViewViewController.m
//  UIWebViewDemo_01
//
//  Created by qi on 2018/4/28.
//  Copyright © 2018 tvu. All rights reserved.
//

#import "WKWebViewViewController.h"
#import <WebKit/WebKit.h>

@interface WKWebViewViewController () <WKNavigationDelegate>

@property (weak, nonatomic) IBOutlet WKWebView *wkWebView;

@end

@implementation WKWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.wkWebView.navigationDelegate = self;
    
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(refreshApp) userInfo:nil repeats:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

static int count = 0;
- (void)refreshApp
{
    count++;
    if (count == 1) {
        [self loadWebWithStringURL:@"https://maxwellqi.github.io"];
    }
    
    if (count == 10) {
        [self loadWebWithStringURL:@"https://blog.csdn.net/shmilycoder/article/details/78603476"];
    }
    
    if (count == 20) {
        [self loadWebWithStringURL:@"http://www.cocoachina.com/ios/20170801/20061.html"];
    }
    
    if (count == 30) {
        [self loadWebWithStringURL:@"https://github.com/DaSens/Vision_Demo"];
    }
    
    if (count == 40) {
        [self loadWebWithStringURL:@"http://www.cnblogs.com/graphics/archive/2011/03/09/1977717.html"];
    }
    
    if (count == 50) {
        [self loadWebWithStringURL:@"http://mall.jd.com/index-1000000127.html"];
    }
    
    if (count == 60) {
        [self loadWebWithStringURL:@"https://blog.csdn.net/zhang522802884/article/details/78032906"];
    }
    
    if (count == 70) {
        [self loadWebWithStringURL:@"https://developer.dji.com/"];
    }
    
    if (count == 80) {
        [self loadWebWithStringURL:@"http://www.sina.com.cn/"];
    }
    
}

- (void)loadWebWithStringURL:(NSString *)strURL
{
    [self.wkWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:strURL]]];
}


#pragma mark WKNavigationDelegate
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
//    WKNavigationActionPolicy policy = WKNavigationActionPolicyAllow;
//    NSURL *url = navigationAction.request.URL;
//    if (WKNavigationTypeLinkActivated == navigationAction.navigationType && [url.scheme isEqualToString:@"http"]) {
//        [[UIApplication sharedApplication] openURL:url];
//        policy = WKNavigationActionPolicyCancel;
//    }
//    decisionHandler(policy);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
