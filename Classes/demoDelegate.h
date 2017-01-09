//
//  demoDelegate.h
//  BlockDelegateDemo
//
//  Created by benjenq on 2017/1/9.
//
//

#import <Foundation/Foundation.h>


@protocol demoDelegateDelegate;
@interface demoDelegate : NSObject{
    id <demoDelegateDelegate> _delegate;
}

@property (nonatomic,assign) id <demoDelegateDelegate> delegate;


@end


@protocol demoDelegateDelegate <NSObject>

- (void)progress:(float)folatVal string:(NSString *)str;

@end
