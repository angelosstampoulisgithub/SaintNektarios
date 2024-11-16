//
//  PageContentViewController.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 10/11/24.
//

#import "PageContentViewController.h"

@interface PageContentViewController ()

@end

@implementation PageContentViewController
-(void) initializeImageArray{
    _imageArray = [NSMutableArray array];
    [_imageArray addObject:[UIImage imageNamed:@"agios1"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios2"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios3"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios4"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios5"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios6"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios7"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios8"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios9"]];
    [_imageArray addObject:[UIImage imageNamed:@"agios10"]];
    [_imageView setImage:[_imageArray objectAtIndex:_pageIndex]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeImageArray];
    // Do any additional setup after loading the view.
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
