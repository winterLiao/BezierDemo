//
//  CircleView.m
//  贝塞尔
//
//  Created by liaowentao on 17/9/13.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView


- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(rect.size.width / 2, rect.size.height /2) radius:rect.size.width/2.0 startAngle:0 endAngle:2*M_PI clockwise:YES];;
    [path stroke];
    //    [path fill];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
