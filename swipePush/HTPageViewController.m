//
//  HTPageViewController.m
//  swipePush
//
//  Created by Cloud Dai on 13-3-7.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import "HTPageViewController.h"

@interface HTPageViewController () <UIGestureRecognizerDelegate>

@property (strong, nonatomic) UIScrollView *baseScrollView;

@end

@implementation HTPageViewController

- (void)dealloc
{
    self.baseScrollView.scrollEnabled = YES;
}

- (UIScrollView *)baseScrollView
{
    if (_baseScrollView == nil)
    {
        UIScrollView *scrollView = (UIScrollView*)self.navigationController.view.superview;
        if ([scrollView isKindOfClass:NSClassFromString(@"UIScrollView")])
        {
            _baseScrollView = scrollView;
        }
    }
    
    return _baseScrollView;
}

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
    rightSwipeGesture.delegate = self;
    [self.view addGestureRecognizer:rightSwipeGesture];
    
    // Swipe left: push a new view
    UISwipeGestureRecognizer *leftSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(pushNewViewIn)];
    leftSwipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    leftSwipeGesture.delegate = self;
    [self.view addGestureRecognizer:leftSwipeGesture];
    
    
    self.baseScrollView.scrollEnabled = NO;
    
}

- (IBAction)backAction
{
    [self popCurrentViewOut];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

- (void)popCurrentViewOut
{

    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pushNewViewIn
{
    [self performSegueWithIdentifier:@"pushV2" sender:self];
}

@end
