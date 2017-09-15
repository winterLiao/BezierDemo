//
//  SquareViewController.m
//  BezierDemo
//
//  Created by liaowentao on 17/9/15.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "SquareViewController.h"
#import "QuadView.h"

@interface SquareViewController ()
{
    QuadView *view;
}
@end

@implementation SquareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"SquareBezier";
    self.view.backgroundColor = [UIColor whiteColor];
    
    view = [[QuadView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];

    // Do any additional setup after loading the view.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint ponit = [touch locationInView:view];
    view.touchPoint = ponit;
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
