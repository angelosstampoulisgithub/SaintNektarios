//
//  ViewModel.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import <Foundation/Foundation.h>
#import "MiraclesModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewModel : NSObject
- (NSMutableArray<MiraclesModel *> *)createMiracles;
@property NSMutableArray *array;
@end

NS_ASSUME_NONNULL_END
