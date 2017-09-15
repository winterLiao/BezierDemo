//
//  QuadView.m
//  贝塞尔
//
//  Created by liaowentao on 17/9/14.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "QuadView.h"

@implementation QuadView

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint currentPoint = CGPointMake(100, rect.size.height / 2.0);
    CGPoint endPoint = CGPointMake(300, rect.size.height / 2.0);
    [path moveToPoint:currentPoint];
    
    if (_touchPoint.y == 0) {
        _touchPoint.x = 200;
        _touchPoint.y = rect.size.height / 2.0 - 100;
    }
    [path addQuadCurveToPoint:endPoint controlPoint:_touchPoint];
    [path stroke];
    
    //起始点
    UIBezierPath *dot1 = [UIBezierPath bezierPathWithArcCenter:currentPoint radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [dot1 fill];
    //结束点
    UIBezierPath *dot2 = [UIBezierPath bezierPathWithArcCenter:endPoint radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [dot2 fill];
    //控制点
    UIBezierPath *dot3 = [UIBezierPath bezierPathWithArcCenter:_touchPoint radius:2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [[UIColor redColor] setFill];
    [dot3 fill];
    //控制线点
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    CGFloat dashPattern[] = {3,1};// 3实线，1空白
    [path2 setLineDash:dashPattern count:1 phase:1];
    [path2 moveToPoint:currentPoint];
    [path2 addLineToPoint:_touchPoint];
    [path2 addLineToPoint:endPoint];
    [path2 stroke];

    
    //    [path fill];
}

- (void)setTouchPoint:(CGPoint)touchPoint
{
    _touchPoint = touchPoint;
    [self setNeedsDisplay];
}
//- (CGPoint)l


@end
