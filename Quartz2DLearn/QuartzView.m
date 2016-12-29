//
//  QuartzView.m
//  Quartz2DLearn
//
//  Created by Jason on 2016/12/27.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "QuartzView.h"

@implementation QuartzView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //绘制图形
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetRGBFillColor(context, 1, 0, 0, 0.5);
//    CGContextFillRect(context, CGRectMake(10, 20, 100, 40));
//    CGContextSetRGBFillColor(context, 0, 0, 1, 0.5);
//    CGContextFillRect(context, CGRectMake(10, 20, 40, 100));

    
    //路径
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    //单挑线段
//    CGContextMoveToPoint(context, 20, 20);
//    CGContextAddLineToPoint(context, 50, 50);
//    CGContextAddLineToPoint(context, 30, 80);
//    //一次性指定多个点
//    CGPoint pos[3] = {CGPointMake(80, 20), CGPointMake(20, 50), CGPointMake(100, 100)};
//    CGContextAddLines(context, pos, 3);
//    CGContextDrawPath(context, kCGPathStroke);
    
    //圆弧
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    //直接绘制
//    CGContextAddArc(context, 100, 200, 30, 0, M_PI, 0);
//    //动点绘制 -- 2点中心向1、3点画射线，圆弧切射线过1、3两点
//    CGContextMoveToPoint(context, 100, 100);//第一点
//    CGContextAddArcToPoint(context, 100, 150, 150, 150, 50);//第二点，三点
//    CGContextDrawPath(context, kCGPathStroke);
    
    //曲线
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    //两拱
//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddCurveToPoint(context, 150, 50, 200, 200, 300, 100);
//    //一拱
//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddQuadCurveToPoint(context, 200, 200, 300, 100);
//    CGContextDrawPath(context, kCGPathStroke);
    
    //闭合路径
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddCurveToPoint(context, 150, 50, 150, 200, 300, 100);
//    CGContextClosePath(context);
//    //从闭合路径的起始点开始
//    CGContextAddLineToPoint(context, 200, 500);
//    CGContextDrawPath(context, kCGPathStroke);
    
    //矩形
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextAddRect(context, CGRectMake(20, 20, 100, 40));
//    CGContextDrawPath(context, kCGPathStroke);
    
    //椭圆
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(context, CGRectMake(0, 0, 30, 50));
//    CGContextDrawPath(context, kCGPathStroke);
    
    //图片
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGRect imgRect = CGRectMake(20, 40, 90, 90);
//    CGContextScaleCTM(context, 0.5, 0.5);
//    CGContextTranslateCTM(context, imgRect.size.width + imgRect.origin.x * 2, imgRect.size.height + imgRect.origin.y * 2);
//    
//    CGContextRotateCTM(context, M_PI);
//    CGContextDrawImage(context, imgRect, [UIImage imageNamed:@"quan"].CGImage);
    
    //Pattern着色样式
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    clorePatternPaingting(context, CGRectMake(0, 0, 300, 500));
    
    //Pattern模板样式
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    stencilPatternPaingting(context, CGRectMake(0, 0, 300, 500));
    
    //阴影
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSaveGState(context);
//    CGContextSetShadowWithColor(context, CGSizeMake(10, 10), 2, [UIColor redColor].CGColor);
//    CGContextSetRGBFillColor(context, 0, 1, 0, 1);
//    CGContextAddEllipseInRect(context, CGRectMake(40, 40, 100, 100));
//    CGContextFillPath(context);
//    CGContextSetShadow(context, CGSizeMake(10, 10), 2);
//    CGContextFillRect(context, CGRectMake(200, 40, 100, 100));
//    CGContextRestoreGState(context);
    
    //CGGradient 轴向渐变
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGFloat components[] = {1,0,1,1, .3,.5,1,1.};
//    CGFloat locations[]  = {0.0, 1.0};
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
//    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
//    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(320, 0), kCGGradientDrawsBeforeStartLocation);
//    CGColorSpaceRelease(colorSpace);
//    CGGradientRelease(gradient);
    
    //CGGradient 径向渐变
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat components[] = {1,0,1,1, .3,.5,1,1.};
    CGFloat locations[]  = {0.0, 1.0};
    CGColorSpaceRef colorSpace = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
    CGContextDrawRadialGradient(context, gradient, CGPointMake(320, 0), 20, CGPointMake(320, 400), 20, kCGGradientDrawsAfterEndLocation);
    CGColorSpaceRelease(colorSpace);
    CGGradientRelease(gradient);

    //CGShading 轴向渐变
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
//    CGFunctionRef functionObj = getFunction(colorspace);
//    CGShadingRef shading = CGShadingCreateAxial(colorspace, CGPointMake(0, 0.5), CGPointMake(1, 0.5), functionObj, false, false);
//    CGAffineTransform myTransform = CGAffineTransformMakeScale(100, 100);
//    CGContextConcatCTM (context, myTransform);
//    CGContextSaveGState (context);
//    CGContextBeginPath(context);
//    CGContextAddArc(context,  .5, .5, .3, 0, M_PI, 0);
//    CGContextClosePath(context);
//    CGContextClip(context);
//    CGContextDrawShading(context, shading);
//    CGShadingRelease(shading);
//    CGColorSpaceRelease(colorspace);
//    CGFunctionRelease(functionObj);
//    CGContextRestoreGState (context);

    //CGShading 径向渐变
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
//    CGFunctionRef functionObj = getFunction1(colorspace);
//    CGShadingRef shading = CGShadingCreateRadial(colorspace, CGPointMake(0.25, 0.3), 0.1, CGPointMake(0.7, 0.7), 0.25, functionObj, false, false);
//    CGAffineTransform myTransform = CGAffineTransformMakeScale(100, 100);
//    CGContextConcatCTM (context, myTransform);
//    CGContextSaveGState (context);
//    
//    CGContextClipToRect (context, CGRectMake(0, 0, 1, 1));
//    CGContextSetRGBFillColor (context, 1, 1, 1, 1);
//    CGContextFillRect (context, CGRectMake(0, 0, 1, 1));
//    
//    CGContextDrawShading(context, shading);
//    
//    CGShadingRelease(shading);
//    CGColorSpaceRelease(colorspace);
//    CGFunctionRelease(functionObj);
//    CGContextRestoreGState (context);
}

//着色样式
void clorePatternPaingting(CGContextRef context, CGRect rect) {
    CGColorSpaceRef patternSpace = CGColorSpaceCreatePattern(NULL);
    CGContextSetFillColorSpace(context, patternSpace);
    CGColorSpaceRelease(patternSpace);
    static const CGPatternCallbacks call = {0, &drawPattern, NULL};
    CGPatternRef pattern = CGPatternCreate(NULL, CGRectMake(0, 0, 30, 30), CGAffineTransformIdentity, 30, 30, kCGPatternTilingConstantSpacing, true, &call);
    CGFloat alpha = 1.0;
    CGContextSetFillPattern(context, pattern, &alpha);
    CGPatternRelease(pattern);
    CGContextFillRect(context, rect);
}
void drawPattern(void *info, CGContextRef context) {
    CGContextSetRGBFillColor(context, 1, 0, 0, 1);
    CGContextFillRect(context, CGRectMake(0, 0, 10, 10));
    CGContextSetRGBFillColor(context, 0, 1, 0, 1);
    CGContextFillRect(context, CGRectMake(10, 0, 10, 10));
    CGContextSetRGBFillColor(context, 0, 0, 1, 1);
    CGContextFillRect(context, CGRectMake(0, 10, 10, 10));
    CGContextSetRGBFillColor(context, 0.5, 0, 0.5, 1);
    CGContextFillRect(context, CGRectMake(10, 10, 10, 10));
}

//模板样式
void stencilPatternPaingting(CGContextRef context, CGRect rect) {
    CGColorSpaceRef baseSpace = CGColorSpaceCreateDeviceRGB();
    CGColorSpaceRef patternSpace = CGColorSpaceCreatePattern(baseSpace);
    CGContextSetFillColorSpace(context, patternSpace);
    CGColorSpaceRelease(patternSpace);
    CGColorSpaceRelease(baseSpace);
    static const CGPatternCallbacks cell = {0, &drawStencilPattern, NULL};
    CGPatternRef pattern = CGPatternCreate(NULL, CGRectMake(0, 0, 30, 30), CGAffineTransformIdentity, 40, 40, kCGPatternTilingConstantSpacing, false, &cell);
    static const CGFloat color[] = {1, 0, 0, 1};
    CGContextSetFillPattern(context, pattern, color);
    CGPatternRelease(pattern);
    CGContextFillRect(context, rect);
}
void drawStencilPattern(void *info, CGContextRef context) {
    CGContextAddEllipseInRect(context, CGRectMake(0, 0, 30, 30));
    CGContextFillPath(context);
}

// CGShading轴向渐变
static CGFunctionRef getFunction(CGColorSpaceRef colorspace) {
    size_t numComponents = 1 + CGColorSpaceGetNumberOfComponents(colorspace);
    CGFloat input_value_range[] = {0, 1};
    CGFloat output_value_range[] = {0, 1, 0, 0, 0,0,1,1};
    CGFunctionCallbacks callbacks = {0, &calculateShadingValues, NULL};
    return CGFunctionCreate((void *) numComponents, 1, input_value_range, numComponents, output_value_range, &callbacks);
}
static void calculateShadingValues(void *info, const CGFloat *in, CGFloat *out) {
    CGFloat v;
    size_t k, compoents;
    static const CGFloat c[] = {1,0,0.5,1};
    compoents = (size_t)info;
    v = *in;
    for (k = 0; k < compoents - 1; k ++)
        *out ++ = c[k] * v;
    *out++ = 1;
}

// CGShading 径向渐变
static CGFunctionRef getFunction1(CGColorSpaceRef colorspace) {
    size_t numComponents = 1 + CGColorSpaceGetNumberOfComponents(colorspace);
    
    CGFloat input_value_range[] = {0, 1};
    CGFloat output_value_range[] = {0, 1, 0, 0, 0,0,1,1};
    
    CGFunctionCallbacks callbacks = {0, &calculateShadingValues1, NULL};
    return CGFunctionCreate((void *) numComponents, 1, input_value_range, numComponents, output_value_range, &callbacks);
}
static void calculateShadingValues1(void *info, const CGFloat *in, CGFloat *out) {
    
    size_t k, compoents;
    double frequency[] = {55, 220, 110, 0};
    compoents = (size_t)info;
    for (k = 0; k < compoents - 1; k ++)
        *out++ = (1 + sin(*in * frequency[k])) / 2;
    *out++ = 1;
}

@end
