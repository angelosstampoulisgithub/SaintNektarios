//
//  VideoPlayer.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import <UIKit/UIKit.h>
#import "AVKit/AVKit.h"
#import "AVFoundation/AVFoundation.h"
NS_ASSUME_NONNULL_BEGIN

@interface VideoPlayer : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnPlay;
- (IBAction)btnPlay:(id)sender;
@property bool isClickedApolitikio;
@property bool isClickedAgni;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property int index;
@property AVPlayer *apolytikio;
@property AVPlayer *ymnos;
@property (weak, nonatomic) IBOutlet UIButton *btnBack;
- (IBAction)btnBack:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;

@end

NS_ASSUME_NONNULL_END
