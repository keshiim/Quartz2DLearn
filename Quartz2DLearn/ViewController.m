//
//  ViewController.m
//  Quartz2DLearn
//
//  Created by Jason on 2016/12/27.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"
#import "QuartzView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    QuartzView *view = [[QuartzView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
