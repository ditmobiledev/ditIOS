//
//  DITBackgroundView.m
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import "DITBackgroundView.h"
#import "DITParrallaxView.h"
#import "Screen.h"

@interface DITBackgroundView()

@property (nonatomic) DITParrallaxView *parrallaxView;
@property (nonatomic) UIImageView *blueFilterOverlay;

@end


@implementation DITBackgroundView

@synthesize parrallaxView = _parrallaxView;
@synthesize blueFilterOverlay = _blueFilterOverlay;


- (instancetype)init
{
    if(self == [super initWithFrame:CGRectMake(0, 0, [Screen width], [Screen height])]) {
        
        self.parrallaxView = [[DITParrallaxView alloc] init];
        
        self.blueFilterOverlay = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [Screen width], [Screen height])];
        self.blueFilterOverlay.image = [[UIImage alloc] initWithContentsOfFile:@"BlueFilter"];
        
        [self addSubview:self.parrallaxView];
        [self addSubview:self.blueFilterOverlay];
    }
    return self;
}



@end
