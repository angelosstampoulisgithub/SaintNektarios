//
//  MiraclesModel.h
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MiraclesModel : NSObject
- (instancetype)initWithMiracles:(NSString *)miracle;
@property NSString *miracle;

@end

NS_ASSUME_NONNULL_END
