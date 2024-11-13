//
//  BooksViewController.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import "BooksViewController.h"
#import "WebKit/WebKit.h"
@interface BooksViewController ()

@end

@implementation BooksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filename = [[NSBundle mainBundle] pathForResource:@"books" ofType:@"pdf"];
    NSURL *urlPlayer = [NSURL fileURLWithPath:filename];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlPlayer];
    [[self navigationItem] setTitle:@"Βιβλία-Εκδόσεις-Αγ.Νεκτάριος"];
    [_webView loadRequest:request];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor blackColor]};

    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:TRUE completion:nil];
}
@end
