//
//  PointView.m
//  贝塞尔
//
//  Created by liaowentao on 17/9/14.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "PointView.h"

@implementation PointView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 200)];
    [path addArcWithCenter:CGPointMake(100, 100) radius:100 startAngle:M_PI_2 endAngle:0 clockwise:NO];
//    [path addArcWithCenter:CGPointMake(rect.size.width / 2.0, rect.size.width / 2.0) radius:50 startAngle:0 endAngle:M_PI clockwise:NO];
    [path addArcWithCenter:CGPointMake(300, 100) radius:100 startAngle: M_PI endAngle:M_PI_2 clockwise:NO];
    [path addArcWithCenter:CGPointMake(300, 300) radius:100 startAngle: 1.5 * M_PI endAngle:M_PI clockwise:NO];
    [path addArcWithCenter:CGPointMake(100, 300) radius:100 startAngle: 0 endAngle:1.5 * M_PI clockwise:NO];
    [[UIColor orangeColor] setStroke];
//    [path closePath];
    [path stroke];
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    [path2 moveToPoint:CGPointMake(100, 400)];
    [path2 addLineToPoint:CGPointMake(300, 400)];
    [path2 addLineToPoint:CGPointMake(150, 550)];
    [path2 addLineToPoint:CGPointMake(200, 300)];
    [path2 addLineToPoint:CGPointMake(250, 550)];
    [path2 closePath];
//    path2.lineWidth = 10;
//    [path2 stroke];
    [[UIColor redColor] setFill];
    [path2 fill];

    
}


@end
