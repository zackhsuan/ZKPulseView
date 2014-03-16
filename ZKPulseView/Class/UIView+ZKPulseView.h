//
//  UIView+ZKPulseView.h
//  ZKPulseView
//
//  Created by zackhsuan on 16/03/2014.
//  Copyright (c) 2014 zzk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CAAnimation.h>

@interface UIView (ZKPulseView)

/*
 * To remove all pulse effect if you have any.
 *
 */
-(void) stopPulseEffect;

/*
 * Start to pulse by using default color, which is the background color's reversed color
 *
 */
-(void) startPulse;

/*
 * Start to pulse by providing needed pulse color.
 *
 */
-(void) startPulseWithColor:(UIColor *)color;

/*
 * The must underneeth method to create the pulse effect, you can use that for your own purposes
 *
 */
-(void) startPulseWithColor:(UIColor *)color offset:(CGSize) offset frequency:(CGFloat) freq;

@end
