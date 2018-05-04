//
//  ViewController.m
//  InterviewDemo_01
//
//  Created by qi on 2018/5/4.
//  Copyright © 2018 tvu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s,----line:%d----",__func__,__LINE__);
    [self performSelector:@selector(test) withObject:self afterDelay:0];
    NSLog(@"%s,----line:%d----",__func__,__LINE__);
}

- (void)test
{
    NSLog(@"%s,----line:%d----",__func__,__LINE__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
