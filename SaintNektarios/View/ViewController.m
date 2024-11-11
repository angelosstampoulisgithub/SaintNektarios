//
//  ViewController.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 9/11/24.
//

#import "ViewController.h"
#import "CandleView.h"
#import "AVKit/AVKit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    CandleView *candleView = [[CandleView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:candleView];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    [label setText:@"Η ΖΩΗ ΤΟΥ ΑΓΙΟΥ ΝΕΚΤΑΡΙΟΥ"];
    [label setTextColor:UIColor.redColor];
    [candleView addSubview:label];
    [label setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[label topAnchor] constraintEqualToAnchor:self.view.topAnchor constant:60].active = TRUE;
    [[label centerXAnchor] constraintEqualToAnchor:self.view.centerXAnchor].active = TRUE;
}

@end
