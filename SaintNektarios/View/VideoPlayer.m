//
//  VideoPlayer.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import "VideoPlayer.h"
#import "Multimedia.h"
@interface VideoPlayer ()

@end

@implementation VideoPlayer

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationItem.title = @"Audio Player";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    [_btnPlay setBackgroundColor:[UIColor redColor]];
    [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
    CGRect bounds = [[UIScreen mainScreen] bounds];
    [_btnPlay setFrame:CGRectMake((bounds.size.width / 2.0)-45, (bounds.size.height / 2.0)+250, 80, 75)];
    [[_btnPlay layer] setCornerRadius:22];
    if (_index==0){
        NSString *apolitikio = [[NSBundle mainBundle] pathForResource:@"apolitikio" ofType:@"mp3"];
        NSURL *urlPlayerApolitikio = [NSURL fileURLWithPath:apolitikio];
        _apolytikio = [[AVPlayer alloc] initWithURL:urlPlayerApolitikio];
    }
    if (_index==1){
        NSString *ymnos = [[NSBundle mainBundle] pathForResource:@"agni" ofType:@"mp3"];
        NSURL *urlPlayerYmnos = [NSURL fileURLWithPath:ymnos];
        _ymnos = [[AVPlayer alloc] initWithURL:urlPlayerYmnos];
    }
    [_imageView setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [_imageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = TRUE;
    [_imageView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:-50].active = TRUE;
    [_imageView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-250].active = TRUE;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnPlay:(id)sender {
    if (_index == 0) {
        _isClickedApolitikio = !_isClickedApolitikio;
        if (_isClickedApolitikio){
            [_apolytikio play];
            [_btnPlay setImage:[UIImage imageNamed:@"pause"] forState:UIControlStateNormal];
        }else{
            [_apolytikio pause];
            [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
            
        }
    }
    if (_index == 1) {
        _isClickedAgni = !_isClickedAgni;
        if (_isClickedAgni){
            [_ymnos play];
            [_btnPlay setImage:[UIImage imageNamed:@"pause"] forState:UIControlStateNormal];
        }else{
            [_ymnos pause];
            [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
            
        }
    }
}
- (IBAction)btnBack:(id)sender {
    _apolytikio = nil;
    _ymnos = nil;
    for (UIView *view in [self.view subviews])
    {
        [view removeFromSuperview];
    }
    [self dismissViewControllerAnimated:TRUE completion:nil];
}
@end
