//
//  ReadMiracleViewController.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 9/11/24.
//

#import <UIKit/UIKit.h>
#import "ViewModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ReadMiracleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)backButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@property NSInteger pageIndex;
@property NSMutableArray<MiraclesModel*>  *miracleArray;
@property ViewModel *viewModel;
@end

NS_ASSUME_NONNULL_END
