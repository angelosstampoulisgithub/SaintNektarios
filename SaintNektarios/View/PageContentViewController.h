//
//  PageContentViewController.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 10/11/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property NSUInteger pageIndex;
@property NSMutableArray<UIImage*> *imageArray;
@property (weak, nonatomic) IBOutlet UIButton *btnBackButton;
- (IBAction)btnBackButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
