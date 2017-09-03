//
//  DrawCycleBorderImageView.m
//  CycleDemo
//
//  Created by zzyyd on 2017/9/3.
//  Copyright © 2017年 zzyyd. All rights reserved.
//

#import "DrawCycleBorderImageView.h"

#define kBorderWith 20

@implementation DrawCycleBorderImageView

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    /**
     画圆形边框
     */
    CGRect bigRect = CGRectMake(rect.origin.x + kBorderWith,
                                rect.origin.y+ kBorderWith,
                                rect.size.width - kBorderWith*2,
                                rect.size.height - kBorderWith*2);
    //设置空心圆的线条宽度
    CGContextSetLineWidth(ctx, kBorderWith);
    //以矩形bigRect为依据画一个圆
    CGContextAddEllipseInRect(ctx, bigRect);
    //填充当前绘画区域的颜色
    [[UIColor greenColor] set];
    //(如果是画圆会沿着矩形外围描画出指定宽度的（圆线）空心圆)/（根据上下文的内容渲染图层）
    CGContextStrokePath(ctx);
    
    /**
     *  裁剪图片
     */
    CGRect smallRect = CGRectMake(rect.origin.x + kBorderWith,
                                  rect.origin.y + kBorderWith,
                                  rect.size.width - 2 * kBorderWith,
                                  rect.size.height -2 * kBorderWith);
    //以矩形ctx为依据画一个圆
    CGContextAddEllipseInRect(ctx, smallRect);
    //设置裁剪区域
    CGContextClip(ctx);
    // 裁剪图片
    UIImage *image = [UIImage imageNamed:@"myImg.png"];
    // 把图片加入smallRect的矩形区域内，超过上面设定的裁剪区域的部分将被裁剪掉
    [image drawInRect:smallRect];
    // 将上下文的内容渲染到视图的layer图层上
    CGContextStrokePath(ctx);
}


@end
