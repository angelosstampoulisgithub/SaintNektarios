//
//  MiraclesModel.m
//  SaintNektarios
//
//  Created by Angelos Staboulis on 11/11/24.
//

#import "MiraclesModel.h"

@implementation MiraclesModel
- (instancetype)initWithMiracles:(NSString *)miracle;
{
    self = [super init];
    if (self) {
        _miracle = miracle;
    }
    return self;
}
@end
