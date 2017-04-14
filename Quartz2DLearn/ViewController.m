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
@property (nonatomic, strong) QuartzView *qview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.qview = [[QuartzView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:self.qview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [self.qview setNeedsDisplay];
}


@end
