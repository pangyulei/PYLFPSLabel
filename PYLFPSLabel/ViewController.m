//
//  ViewController.m
//  PYLFPSLabel
//
//  Created by yulei pang on 2019/2/19.
//  Copyright © 2019 pangyulei. All rights reserved.
//

#import "ViewController.h"
#import "PYLFPSLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:[[PYLFPSLabel alloc] initWithFrame:CGRectMake(16, 100, 0, 0)]];
}


@end
