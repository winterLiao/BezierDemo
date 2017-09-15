//
//  BaseApiView.m
//  BezierDemo
//
//  Created by liaowentao on 17/9/14.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "BaseApiView.h"

@implementation BaseApiView


- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRect:CGRectMake(50, 100, 200, 20)];
    [path1 stroke];
    
    UIBezierPath *path2 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 150, 200, 30)];
    [path2 stroke];
    
    UIBezierPath *path3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 200, 200, 20) cornerRadius:5];
    [path3 stroke];
    
    UIBezierPath *path4 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 300) radius:50 startAngle:0 endAngle:2*M_PI clockwise:YES];
    [path4 stroke];
    
    UIBezierPath *path5 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 300) radius:50 startAngle:0 endAngle:M_PI clockwise:YES];
    [path5 stroke];
    
    UIBezierPath *path6 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(300, 300) radius:50 startAngle:M_PI endAngle:0 clockwise:YES];
    [path6 stroke];


    
    

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
