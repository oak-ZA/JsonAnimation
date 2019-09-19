//
//  ViewController.m
//  JsonAnimation
//
//  Created by 张奥 on 2018/10/24.
//  Copyright © 2018年 张奥. All rights reserved.
//

#import "ViewController.h"
#import "Lottie.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *aniBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    aniBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-40, [UIScreen mainScreen].bounds.size.height/2 - 20, 80, 40);
    [aniBtn setTitle:@"点我" forState:UIControlStateNormal];
    [aniBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    aniBtn.backgroundColor = [UIColor blueColor];
    [aniBtn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aniBtn];
    
}

-(void)clickBtn{
    [self showLikeViewAtPoint];
}
- (void)showLikeViewAtPoint{
    
    LOTAnimationView *animationView = [LOTAnimationView animationNamed:@"bj.json"];
    animationView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:animationView];
    [animationView playWithCompletion:^(BOOL animationFinished) {
        [animationView removeFromSuperview];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
