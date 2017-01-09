//
//  demoDelegate.m
//  BlockDelegateDemo
//
//  Created by benjenq on 2017/1/9.
//
//

#import "demoDelegate.h"

@implementation demoDelegate


NSTimer *_timer;

float folatVal;

- (instancetype)init{
    self = [super init];
    if (self) {
        folatVal = 0;
        _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(getProgress) userInfo:nil repeats:YES];
        
    }
    return self;
}

- (void)getProgress{
    folatVal ++;
    if (folatVal > 100) {
        folatVal = 0;
    }
    if ([_delegate respondsToSelector:@selector(progress:string:)]) {
        [_delegate progress:folatVal string:[self dateToString:[NSDate date]]];
    }
    
    
}

- (NSString *)dateToString:(NSDate *)inDate{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setTimeZone:[NSTimeZone localTimeZone]];//[NSTimeZone timeZoneWithName:@"GMT"]];
    // Convert date object to desired output format
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateStr = [dateFormat stringFromDate:inDate];
    
    [dateFormat release];
    return dateStr;
}




@end
