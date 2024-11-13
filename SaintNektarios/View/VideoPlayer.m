//
//  VideoPlayer.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import "VideoPlayer.h"

@interface VideoPlayer ()

@end

@implementation VideoPlayer

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    [_btnPlay setBackgroundColor:[UIColor redColor]];
    [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
    CGRect bounds = [[UIScreen mainScreen] bounds];
    [_btnPlay setFrame:CGRectMake((bounds.size.width / 2.0)-45, (bounds.size.height / 2.0)+250, 80, 75)];
    [[_btnPlay layer] setCornerRadius:22];
    if (_index==0){
        [[self navigationItem] setTitle:@"Απολυτίκιο Αγίου Νεκταρίου"];
        NSString *apolitikio = [[NSBundle mainBundle] pathForResource:@"apolitikio" ofType:@"mp3"];
        NSURL *urlPlayerApolitikio = [NSURL fileURLWithPath:apolitikio];
        NSError *error;
        __audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:urlPlayerApolitikio error:&error];
        [__audioPlayer prepareToPlay];
    }
    if (_index==1){
        [[self navigationItem] setTitle:@"Υμνος στην Παναγία"];

        NSString *agni = [[NSBundle mainBundle] pathForResource:@"agni" ofType:@"mp3"];
        NSURL *urlPlayerAgni = [NSURL fileURLWithPath:agni];
        _avPlayer = [[AVPlayer alloc] initWithURL:urlPlayerAgni];
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

- (IBAction)btnPlay:(id)sender {
    if (_index == 0) {
        _isClickedApolitikio = !_isClickedApolitikio;
        if (_isClickedApolitikio){
            [__audioPlayer play];
            [_btnPlay setImage:[UIImage imageNamed:@"pause"] forState:UIControlStateNormal];
        }else{
            [__audioPlayer pause];
            [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
            
        }
    }
    if (_index == 1) {
        _isClickedAgni = !_isClickedAgni;
        if (_isClickedAgni){
            [_avPlayer play];
            [_btnPlay setImage:[UIImage imageNamed:@"pause"] forState:UIControlStateNormal];
        }else{
            [_avPlayer pause];
            [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
            
        }
    }
}
@end
