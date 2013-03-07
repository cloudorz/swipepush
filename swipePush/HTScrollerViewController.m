//
//  HTScrollerViewController.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-7.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTScrollerViewController.h"
#import "HTIndexViewController.h"
#import "HTSubPageViewController.h"
#import "HTLeftSubViewController.h"

@interface HTScrollerViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scorllView;
@property (strong, nonatomic) HTIndexViewController *ivc;
@property (strong, nonatomic) HTSubPageViewController *svc;
@property (strong, nonatomic) HTLeftSubViewController *lvc;
@property (strong, nonatomic) UINavigationController *ivcN, *svcN, *lvcN;
@end

@implementation HTScrollerViewController

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
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    self.ivcN = [storyboard instantiateViewControllerWithIdentifier:@"indexPageNav"];
    self.svcN = [storyboard instantiateViewControllerWithIdentifier:@"settingPageNav"];
    self.lvcN = [storyboard instantiateViewControllerWithIdentifier:@"rankPageNav"];
    
    self.ivc = [self.ivcN.viewControllers lastObject];
    self.svc = [self.svcN.viewControllers lastObject];
    self.lvc = [self.lvcN.viewControllers lastObject];
    
    self.ivcN.view.frame = CGRectOffset(self.view.bounds, self.view.bounds.size.width, 0);
    self.svcN.view.frame = CGRectOffset(self.view.bounds, self.view.bounds.size.width*2, 0);
    self.lvcN.view.frame = CGRectOffset(self.view.bounds, 0, 0);
    
    [self.scorllView addSubview:self.lvcN.view];
    [self.scorllView addSubview:self.ivcN.view];
    [self.scorllView addSubview:self.svcN.view];
    
    NSLog(@"1: %.f, 2: %.f, 3: %.f", self.ivcN.view.frame.origin.x, self.svcN.view.frame.origin.x, self.lvcN.view.frame.origin.x);


    self.scorllView.contentOffset = CGPointMake(self.view.bounds.size.width, 0);
    
    self.scorllView.contentSize = CGSizeMake(self.view.bounds.size.width*3, self.view.bounds.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScorllView:nil];
    [super viewDidUnload];
}
@end
