//
//  CubeView.m
//  BezierDemo
//
//  Created by liaowentao on 17/9/15.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "CubeView.h"

@implementation CubeView


- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint currentPoint = CGPointMake(10, rect.size.height / 2.0);
    CGPoint endPoint = CGPointMake(300, rect.size.height / 2.0);
    [path moveToPoint:currentPoint];
    
    if (_controlPoint1.y == 0) {
        _controlPoint1.x = 100;
        _controlPoint1.y = rect.size.height / 2.0 - 100;
    }
    if (_controlPoint2.y == 0) {
        _controlPoint2.x = 200;
        _controlPoint2.y = rect.size.height / 2.0 + 100;
    }
//    [path addQuadCurveToPoint:endPoint controlPoint:_touchPoint];
    [path addCurveToPoint:endPoint controlPoint1:_controlPoint1 controlPoint2:_controlPoint2];
    [path stroke];
    
    //起始点
    UIBezierPath *dot1 = [UIBezierPath bezierPathWithArcCenter:currentPoint radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [dot1 fill];
    //结束点
    UIBezierPath *dot2 = [UIBezierPath bezierPathWithArcCenter:endPoint radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [dot2 fill];
    //控制点1
    UIBezierPath *dot3 = [UIBezierPath bezierPathWithArcCenter:_controlPoint1 radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [[UIColor redColor] setFill];
    [dot3 fill];
    //控制点2
    UIBezierPath *dot4 = [UIBezierPath bezierPathWithArcCenter:_controlPoint2 radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [[UIColor redColor] setFill];
    [dot4 fill];

    //控制线点
//    UIBezierPath *path2 = [UIBezierPath bezierPath];
//    CGFloat dashPattern[] = {3,1};// 3实线，1空白
//    [path2 setLineDash:dashPattern count:1 phase:1];
//    [path2 moveToPoint:currentPoint];
//    [path2 addLineToPoint:_touchPoint];
//    [path2 addLineToPoint:endPoint];
//    [path2 stroke];
}

- (void)setControlPoint1:(CGPoint)controlPoint1
{
    _controlPoint1 = controlPoint1;
    [self setNeedsDisplay];
}

- (void)setControlPoint2:(CGPoint)controlPoint2
{
    _controlPoint2 = controlPoint2;
    [self setNeedsDisplay];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
