//
//  demoBlock.m
//  BlockDelegateDemo
//
//  Created by benjenq on 2017/1/9.
//
//

#import "demoBlock.h"

@implementation demoBlock

void(^testBlock)(float folatVal,NSString *str);

float folatVal2;

NSTimer *_timer;
+ (void)progress:(void(^)(float folatVal,NSString *str))completion{
    testBlock = [completion copy];
    folatVal2 = 0;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(getProgress) userInfo:nil repeats:YES];
}

+ (void)getProgress{
    folatVal2 ++;
    if (folatVal2 > 100) {
        folatVal2 = 0;
    }
    testBlock(folatVal2,[self dateToString:[NSDate date]]);
    
}

+ (NSString *)dateToString:(NSDate *)inDate{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setTimeZone:[NSTimeZone localTimeZone]];//[NSTimeZone timeZoneWithName:@"GMT"]];
    // Convert date object to desired output format
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateStr = [dateFormat stringFromDate:inDate];
    
    [dateFormat release];
    return dateStr;
}


@end
