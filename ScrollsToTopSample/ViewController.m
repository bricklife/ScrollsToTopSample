//
//  ViewController.m
//  ScrollsToTopSample
//
//  Created by Shinichiro Oba on 2013/12/27.
//  Copyright (c) 2013年 bricklife.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutletCollection(UIScrollView) NSArray *scrollViewArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (UIScrollView *scrollView in self.scrollViewArray) {
        scrollView.delegate = self;
    }
    
    [self resetScrollViews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private

- (void)resetScrollViews
{
    for (UIScrollView *scrollView in self.scrollViewArray) {
        scrollView.scrollsToTop = NO;
    }
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self resetScrollViews];
    
    scrollView.scrollsToTop = YES;
}

@end
