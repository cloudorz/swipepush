//
//  HTIndexViewController.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-5.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTIndexViewController.h"

@interface HTIndexViewController ()

@end

@implementation HTIndexViewController

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
    NSLog(@"any: %@", self.navigationController);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)popCurrentViewOut
{
    NSLog(@"some thing ok?");
    [self performSegueWithIdentifier:@"pushLeftView" sender:self];
}

- (void)pushNewViewIn
{
    [self performSegueWithIdentifier:@"pushView" sender:self];
}

@end
