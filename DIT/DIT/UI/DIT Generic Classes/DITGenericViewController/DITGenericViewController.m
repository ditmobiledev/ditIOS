//
//  DITGenericViewController.m
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import "DITGenericViewController.h"
#import "DITBackgroundView.h"

@interface DITGenericViewController()

@property(nonatomic) DITBackgroundView *backgroundView;

@end


@implementation DITGenericViewController

@synthesize backgroundView = _backgroundView;



-(void)viewDidLoad {
    [super viewDidLoad];
    
    // Change the status bar to white, to make app pretty.
    [self setNeedsStatusBarAppearanceUpdate];
    
    
    self.backgroundView = [[DITBackgroundView alloc] init];
    
    [self.view addSubview:self.backgroundView];
}



@end
