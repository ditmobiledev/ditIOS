//
//  DITParrallaxView.m
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import "DITParrallaxView.h"
#import "Screen.h"

@interface DITParrallaxView()

@property(nonatomic) NSMutableArray *campusImageNames;
@property(nonatomic) UIImage *imageForParrallaxView;



@end


@implementation DITParrallaxView

CGFloat parrallaxEffectRelativeValue = 30;
@synthesize campusImageNames = _campusImageNames;
@synthesize imageForParrallaxView = _imageForParrallaxView;


- (instancetype)init
{
    if (self == [super initWithFrame:CGRectMake(0, 0, [Screen width], [Screen width])]) {
    }
    return self;
}




-(void)setCampusImageNames:(NSMutableArray *)campusImageNames {
    _campusImageNames = [[NSMutableArray alloc] initWithObjects:
                         @"KevinStreet",
                         @"AungierStreet",
                         @"BoltonStreet",
                         @"Grangegorman",
                         @"CathalBrughaStreet", nil];
}


@end
