//
//  UIView+ZKPulseView.m
//  ZKPulseView
//
//  Created by zackhsuan on 16/03/2014.
//  Copyright (c) 2014 zzk. All rights reserved.
//

#import "UIView+ZKPulseView.h"

@implementation UIView (ZKPulseView)

-(void)stopPulseEffect{
    [self.layer removeAnimationForKey:@"ZKPulse"];
    self.layer.shadowOpacity = 0.0;
}

-(BOOL)isPulsating{
    return ([self.layer animationForKey:@"ZKPulse"] !=Nil);
}

-(void)startPulse{
    //Start to pulse use the default reversed color
    [self startPulseWithColor:[self reversedColor]];
}

-(void)startPulseWithColor:(UIColor *)color{
    //Shadow radius can enable to pulse part to just be the view itself, if you dont like to have dropdown effect
    //You can set value for this key.
    self.layer.shadowRadius = 14;
    [self startPulseWithColor:color offset:CGSizeMake(0.0, 0.0) frequency:2];
}

-(void) startPulseWithColor:(UIColor *)color offset:(CGSize)offset frequency:(CGFloat)freq{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowOpacity = 0.9;
    self.layer.masksToBounds = NO;
    
    //Animation part
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    anim.fromValue = @(0.9);
    anim.toValue = @(0.2);
    anim.duration = freq;
    anim.autoreverses = YES;
    anim.repeatCount = INT32_MAX;
    
    [self.layer addAnimation:anim forKey:@"ZKPulse"];
}

/*
 * Private method to generate reversed color from this view's background color
 *
 */
-(UIColor *) reversedColor{
    const CGFloat *componentColors = CGColorGetComponents(self.backgroundColor.CGColor);
    UIColor *newColor = [[UIColor alloc] initWithRed:(1.0 - componentColors[0])
                                               green:(1.0 - componentColors[1])
                                                blue:(1.0 - componentColors[2])
                                               alpha:componentColors[3]];
    return newColor;
}


@end
