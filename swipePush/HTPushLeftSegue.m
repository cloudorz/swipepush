//
//  HTPushLeftSegue.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-5.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTPushLeftSegue.h"
#import <QuartzCore/QuartzCore.h>

#define ANIMATION_DURATION 0.35
#define ANIMATION_DELAY 0

@implementation HTPushLeftSegue


- (void) perform
{
    UIViewController *src = self.sourceViewController;
    UIViewController *dst = self.destinationViewController;

//    CATransition *transition = [CATransition animation];
//    transition.duration = 0.35;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
//    transition.type = kCATransitionPush;
//    transition.subtype =kCATransitionFromLeft;
//    [src.navigationController.view.layer addAnimation:transition forKey:kCATransition];
//
//    [src.navigationController pushViewController:dst animated:NO];
    
    dst.view.frame = CGRectOffset(src.navigationController.view.bounds, -src.navigationController.view.bounds.size.width, 0);
    src.view.frame = src.navigationController.view.bounds;
    // Add the new view to our view hierarchy so that it displays on screen.
    [src.navigationController.view addSubview:dst.view];
    [src.navigationController.view addSubview:src.view];
    
    // Start animation
    [UIView animateWithDuration:ANIMATION_DURATION delay:ANIMATION_DELAY options:UIViewAnimationOptionCurveEaseInOut animations:^{
        src.view.frame = CGRectOffset(src.navigationController.view.bounds, src.navigationController.view.bounds.size.width, 0);
        dst.view.frame = src.navigationController.view.bounds;
    }   completion:^(BOOL finished) {
        if (finished) {
            [src.navigationController pushViewController:dst animated:NO];
        }
    }];
}

@end
