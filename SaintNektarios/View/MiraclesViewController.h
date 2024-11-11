//
//  MiraclesViewController.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 9/11/24.
//

#import <UIKit/UIKit.h>
#import "ReadMiracleViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface MiraclesViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *array;
@property ReadMiracleViewController *read;
@end

NS_ASSUME_NONNULL_END
