//
//  UIWebViewViewController.m
//  UIWebViewDemo_01
//
//  Created by qi on 2018/4/28.
//  Copyright © 2018 tvu. All rights reserved.
//

#import "UIWebViewViewController.h"

@interface UIWebViewViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation UIWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSURLCache *urlCatch = [[NSURLCache alloc] initWithMemoryCapacity:4*1024*1024 diskCapacity:20*1024*1024 diskPath:nil];
    [NSURLCache setSharedURLCache:urlCatch];
    
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
    
}

- (void)loadWebWithStringURL:(NSString *)strURL
{
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:strURL]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
