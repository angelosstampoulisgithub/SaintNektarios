//
//  BooksViewController.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import <UIKit/UIKit.h>
#import "WebKit/WebKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface BooksViewController : UIViewController

@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end

NS_ASSUME_NONNULL_END
