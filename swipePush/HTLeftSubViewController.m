//
//  HTLeftSubViewController.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-5.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTLeftSubViewController.h"
#import <QuartzCore/QuartzCore.h>

#define ANIMATION_DURATION 0.35
#define ANIMATION_DELAY 0

@interface HTLeftSubViewController ()

@end

@implementation HTLeftSubViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // Swipe right: pop the current view and go back one level
//    UISwipeGestureRecognizer *rightSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(pushNewViewIn)];
//    rightSwipeGesture.direction = UISwipeGestureRecognizerDirectionRight;
//    [self.view addGestureRecognizer:rightSwipeGesture];
//    
//    
//    // Swipe left: push a new view
//    UISwipeGestureRecognizer *leftSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(popCurrentViewOut)];
//    leftSwipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
//    [self.view addGestureRecognizer:leftSwipeGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)popCurrentViewOut
{
//    NSLog(@"some thing ok?");
//    CATransition *transition = [CATransition animation];
//    transition.duration = 0.45;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
//    transition.type = kCATransitionPush;
//    transition.subtype =kCATransitionFromRight;
//    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
//    [self.navigationController popViewControllerAnimated:NO];
    
    // Start animation
    
    UIViewController *preVC = [self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count-2];
    preVC.view.frame = CGRectOffset(self.navigationController.view.bounds, self.navigationController.view.bounds.size.width, 0);
    
    [self.navigationController.view addSubview:preVC.view];
    [self.navigationController.view addSubview:self.view];
    
    [UIView animateWithDuration:ANIMATION_DURATION delay:ANIMATION_DELAY options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.view.frame = CGRectOffset(self.navigationController.view.bounds, -self.navigationController.view.bounds.size.width, 0);
        preVC.view.frame = self.navigationController.view.bounds;
    } completion:^(BOOL finished) {
        if (finished) {
            [self.navigationController popViewControllerAnimated:NO];
        }
    }];
}

- (void)pushNewViewIn
{
    //    [self performSegueWithIdentifier:@"pushView" sender:self];
}

@end
