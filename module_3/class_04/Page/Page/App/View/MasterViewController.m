//
//  MasterViewController.m
//  Page
//
//  Created by Franti Saúl Huamán Mera on 2/15/14.
//  Copyright (c) 2014 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MasterViewController.h"
#import "PageController.h"
#import "FotoViewController.h"

@interface MasterViewController ()
@property (nonatomic, strong) UIPageViewController *page;
@end

@implementation MasterViewController

#pragma mark -
#pragma mark LifeCycle Methods
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    
    NSDictionary *options = [NSDictionary dictionaryWithObject:
                             [NSNumber numberWithInteger:UIPageViewControllerSpineLocationMin]
                                                        forKey: UIPageViewControllerOptionSpineLocationKey];
    
	self.page = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:options];
    self.page.dataSource=self;
    self.page.delegate=self;
    self.page.view.frame = self.view.bounds;
    FotoViewController *y = [self viewControllerAtIndex:0];
    
    [self.page setViewControllers:[NSArray arrayWithObjects:y, nil] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    //Colocando un UIViewController en otro UIViewController
    [self addChildViewController:self.page];
    [self.view addSubview:self.page.view];
    [self.page didMoveToParentViewController:self];
}

- (FotoViewController *)viewControllerAtIndex:(NSUInteger)index {
    FotoViewController *child = [self.storyboard instantiateViewControllerWithIdentifier:@"fotoScene"];
    child.numeroDeFotoQueDeboMostrar=index;
    return child;
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Page View Data Source Methods
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    NSUInteger index = [(FotoViewController *)viewController numeroDeFotoQueDeboMostrar];
    if (index == 0) {
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index];
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index = [(FotoViewController *)viewController numeroDeFotoQueDeboMostrar];
    index++;
    
    if (index == 5) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}
@end
