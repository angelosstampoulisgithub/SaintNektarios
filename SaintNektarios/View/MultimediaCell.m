//
//  MultimediaCell.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import "MultimediaCell.h"

@implementation MultimediaCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self playAnimatedGif];
}
-(void) playAnimatedGif{
    NSString *filename = [[NSBundle mainBundle] pathForResource:@"candle" ofType:@"gif"];
    NSURL *urlFilename = [NSURL fileURLWithPath:filename];
    CGAnimateImageAtURLWithBlock((CFURLRef)urlFilename, nil, ^(size_t index, CGImageRef  _Nonnull image, bool * _Nonnull stop) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithCGImage:image]];
        [imageView setFrame:CGRectMake(0, 0, 100, 95)];
        [self addSubview:imageView];
    });
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
