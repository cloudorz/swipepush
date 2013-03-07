//
//  HTSubPageViewController.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-5.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTSubPageViewController.h"

#define ANIMATION_DURATION 0.4
#define ANIMATION_DELAY 0

@interface HTSubPageViewController ()

@end

@implementation HTSubPageViewController

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickWork:(id)sender
{
    NSLog(@"fire the war.");
}


@end
