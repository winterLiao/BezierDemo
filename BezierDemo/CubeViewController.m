//
//  CubeViewController.m
//  BezierDemo
//
//  Created by liaowentao on 17/9/15.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "CubeViewController.h"
#import "CubeView.h"

@interface CubeViewController ()
{
    CubeView *view;
    BOOL isTapControl1;
}
@end

@implementation CubeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"SquareBezier";
    self.view.backgroundColor = [UIColor whiteColor];
    
    view = [[CubeView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:view];
    
    isTapControl1 = NO;
    if (fabs(view.controlPoint1.x - point.x) < 1 && fabs(view.controlPoint1.y - point.y)) {
        isTapControl1 = YES;
    }

    
    if (isTapControl1) {
        view.controlPoint1 = point;
    }else{
        view.controlPoint2 = point;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:view];

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
