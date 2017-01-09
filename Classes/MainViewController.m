//
//  MainViewController.m
//  BlockDelegateDemo
//
//  Created by benjenq on 17/1/9.
//  Copyright 2017 benjenq. All rights reserved.
//

#import "MainViewController.h"
#import "demoBlock.h"
#import "demoDelegate.h"

@interface MainViewController (){
    
    IBOutlet UILabel *delegate_Float;
    IBOutlet UILabel *delegate_String;
    
    IBOutlet UILabel *block_Float;
    IBOutlet UILabel *block_String;

}
@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    demoDelegate *demodeg = [[demoDelegate alloc] init];
    [demodeg setDelegate:(id<demoDelegateDelegate>)self];
    
    [demoBlock progress:^(float folatVal, NSString *str) {
        block_Float.text = [self floatToString:folatVal];
        block_String.text = str;
    }];
    
}

#pragma mark - @protocol demoDelegateDelegate <NSObject>

- (void)progress:(float)folatVal string:(NSString *)str{
    delegate_Float.text = [self floatToString:folatVal];
    delegate_String.text = str;

}

- (NSString *)floatToString:(float)floatVal{
    return [NSString stringWithFormat:@"%.2f%%",floatVal];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
