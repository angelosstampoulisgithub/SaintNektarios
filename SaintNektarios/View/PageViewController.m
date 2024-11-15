//
//  PageViewController.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 10/11/24.
//

#import "PageViewController.h"
#import "PageContentViewController.h"
@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initializePageViewController];
}
-(void) initializePageViewController{
    self.dataSource = self;
    PageContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion:nil];
    [[self navigationItem] setTitle:@"Album Φωτογραφιών"];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};

}
- (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    PageContentViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageContentViewController.pageIndex = index;
    return pageContentViewController;
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
    if (index < 10){
        index++;
    }else{
        index = 0;
    }
    return [self viewControllerAtIndex:index];

}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
    if (index == 0){
        index = 10;
    }else{
        index--;
    }
    return [self viewControllerAtIndex:index];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
