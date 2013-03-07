//
//  HTPage2ViewController.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-7.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTPage2ViewController.h"

@interface HTPage2ViewController ()
@end

@implementation HTPage2ViewController

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
    UISwipeGestureRecognizer *rightSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(popCurrentViewOut)];
    rightSwipeGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rightSwipeGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)popCurrentViewOut
{

    [self.navigationController popViewControllerAnimated:YES];
}

@end
