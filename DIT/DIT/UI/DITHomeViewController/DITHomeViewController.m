//
//  ViewController.m
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import "DITHomeViewController.h"
#import "Screen.h"
#import "DITCampusNameLabel.h"

@interface DITHomeViewController()

@property (nonatomic) DITCampusNameLabel *campusNameLabel;

@end



@implementation DITHomeViewController

@synthesize campusNameLabel = _campusNameLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.campusNameLabel = [[DITCampusNameLabel alloc] initWithFrame:CGRectMake(0, 20, [Screen width], 30) andText:@"Kevin Street"];
    
    [self.view addSubview:self.campusNameLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
