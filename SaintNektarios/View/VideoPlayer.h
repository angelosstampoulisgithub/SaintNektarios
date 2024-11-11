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

@property int index;
@property AVAudioPlayer *_audioPlayer;
@property AVPlayer * avPlayer;
@end

NS_ASSUME_NONNULL_END
