//
//  Multimedia.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 10/11/24.
//

#import <UIKit/UIKit.h>
#import "PageViewController.h"
#import "PageContentViewController.h"
#import "BooksViewController.h"
#import "VideoPlayer.h"
NS_ASSUME_NONNULL_BEGIN

@interface Multimedia : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UITableView *multimedia;
@property NSMutableArray *array;
@property PageViewController* read;
@property BooksViewController* books;
@property VideoPlayer *videoPlayerApolitikio;
@property VideoPlayer *videoAgni;
@end

NS_ASSUME_NONNULL_END
