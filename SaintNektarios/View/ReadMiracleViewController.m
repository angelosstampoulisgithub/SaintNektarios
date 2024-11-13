//
//  ReadMiracleViewController.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 9/11/24.
//

#import "ReadMiracleViewController.h"
#import "ViewModel.h"

@interface ReadMiracleViewController ()

@end

@implementation ReadMiracleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[self navigationItem] setTitle:@"Ανάγνωση Αρθρου"];
    _viewModel = [[ViewModel alloc] init];
    if(_pageIndex == 0){
        NSString *miracle1 = [NSString stringWithFormat:@"%@", [[_viewModel createMiracles] objectAtIndex:0].miracle];
        [_textView setText:miracle1];
    }
    if(_pageIndex == 1){
        NSString *miracle2 = [NSString stringWithFormat:@"%@", [[_viewModel createMiracles] objectAtIndex:1].miracle];
        
        [_textView setText:miracle2];
    }
    if(_pageIndex == 2){
        NSString *miracle3 = [NSString stringWithFormat:@"%@", [[_viewModel createMiracles] objectAtIndex:2].miracle];
        [_textView setText:miracle3];
    }
    if (_pageIndex == 3) {
        NSString *miracle4 = [NSString stringWithFormat:@"%@", [[_viewModel createMiracles] objectAtIndex:3].miracle];
        [_textView setText:miracle4];
    }
    if(_pageIndex == 4){
        NSString *miracle5 = [NSString stringWithFormat:@"%@", [[_viewModel createMiracles] objectAtIndex:4].miracle];
        [_textView setText:miracle5];
    }
   

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:TRUE completion:nil];
}
@end
