//
//  ViewController.m
//  NSTimerDemo_01
//
//  Created by qi on 2018/4/27.
//  Copyright © 2018 tvu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSTimer  *mytimer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    _mytimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timecount) userInfo:nil repeats:YES];
    
//    _mytimer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timecount) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:_mytimer forMode:NSDefaultRunLoopMode];  // 这个runloop是在主线程中开启的
    
    
    [NSThread detachNewThreadSelector:@selector(useNSTimer) toTarget:self withObject:nil];
    
}

- (void)timecount{
    NSDate* date = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    NSString *time = [formatter stringFromDate:date];
    NSLog(@"%@,%@",time,[NSThread currentThread]);
}

- (void)useNSTimer{
    _mytimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timecount) userInfo:nil repeats:YES];
    [self performSelector:@selector(stopcount) withObject:nil afterDelay:10];
    [[NSRunLoop currentRunLoop] addTimer:_mytimer forMode:NSRunLoopCommonModes];
    // runloop在子线程上是需要手动开启的
    [[NSRunLoop currentRunLoop] run];
}

- (void)stopcount
{
    [_mytimer invalidate];     // 如果不invalidate，会导致timmer无法停止
    _mytimer = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
