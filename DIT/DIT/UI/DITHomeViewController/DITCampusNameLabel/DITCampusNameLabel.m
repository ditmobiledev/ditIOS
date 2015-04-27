//
//  DITCampusNameLabel.m
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import "DITCampusNameLabel.h"

@implementation DITCampusNameLabel


- (instancetype)initWithFrame:(CGRect)frame andText:(NSString *)text {
    
    if(self == [super initWithFrame:frame]) {
        self.attributedText = [[NSAttributedString alloc] initWithString:text
                                                              attributes:@{
                                                                        NSKernAttributeName: @(1.5)}];
        self.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
@end
