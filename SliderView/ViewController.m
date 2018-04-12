//
//  ViewController.m
//  SliderView
//
//  Created by Scott on 2018/4/11.
//  Copyright © 2018年 無解. All rights reserved.
//
#define kSCREEN_WIDTH    [[UIScreen mainScreen] bounds].size.width
#define kSCREEN_HEIGHT   [[UIScreen mainScreen] bounds].size.height

#import "ViewController.h"
#import "SliderView.h"

@interface ViewController (){
    SliderView *sliderView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    sliderView = [[SliderView alloc] initWithFrame:CGRectMake(0, 200, kSCREEN_WIDTH, 50)];
    sliderView.minValue = 0;
    sliderView.value = 500;
    sliderView.maxValue = 1000;
    sliderView.normalColor = [UIColor yellowColor];
    sliderView.trackColors = @[(__bridge id)[UIColor colorWithRed:255/255.f green:140/255.f blue:45/255.f alpha:1.0].CGColor, (__bridge id)[UIColor colorWithRed:255/255.f green:90/255.f blue:70/255.f alpha:1.0].CGColor];
    sliderView.trackSize = CGSizeMake(kSCREEN_WIDTH-60, 10);
    sliderView.thumbSize = CGSizeMake(40, 24);
    [self.view addSubview:sliderView];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 300, 175, 60);
    [button setTitle:@"relod" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(buttonclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonclick:(UIButton *)sender{
    [sliderView reloadData:200.f];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
