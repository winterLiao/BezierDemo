//
//  BaseTestViewController.m
//  贝塞尔
//
//  Created by liaowentao on 17/9/14.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "BaseTestViewController.h"
//#import "TestView1.h"
//#import "TestView2.h"
#import "CircleView.h"
#import "PointView.h"
#import "BaseApiView.h"

@interface BaseTestViewController ()

@end

@implementation BaseTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"BaseBezier";
    self.view.backgroundColor = [UIColor whiteColor];
    
    BaseApiView *view = [[BaseApiView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];
        

    // Do any additional setup after loading the view.
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
