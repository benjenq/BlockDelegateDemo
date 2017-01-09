//
//  demoBlock.h
//  BlockDelegateDemo
//
//  Created by benjenq on 2017/1/9.
//
//

#import <Foundation/Foundation.h>

@interface demoBlock : NSObject

+ (void)progress:(void(^)(float folatVal,NSString *str))completion;

@end
