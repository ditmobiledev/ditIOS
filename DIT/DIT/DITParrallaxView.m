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
@property(nonatomic) UIImageView *imageViewForParrallaxView;


- (void) addCampusImageToView:(UIImage *)image;
- (void) changeCampusImageViewWithImage:(UIImage *)image;
- (void) determineImageForCampusImageView;

@end



@implementation DITParrallaxView

CGFloat parrallaxEffectRelativeValue = 30;
@synthesize campusImageNames = _campusImageNames;
@synthesize imageViewForParrallaxView = _imageViewForParrallaxView;

NSString *currentCampusName = @"Kevin Street";


- (instancetype)init
{
    if (self == [super initWithFrame:CGRectMake(0, 0, [Screen width], [Screen width])]) {
        
        self.imageViewForParrallaxView = [UIImageView alloc];
    }
    return self;
}




- (void)setCampusImageNames:(NSMutableArray *)campusImageNames {
    _campusImageNames = [[NSMutableArray alloc] initWithObjects:
                         @"KevinStreet",
                         @"AungierStreet",
                         @"BoltonStreet",
                         @"Grangegorman",
                         @"CathalBrughaStreet", nil];
}



- (void)determineImageForCampusImageView {
    UIImage *campusImage = [[UIImage alloc] initWithContentsOfFile:_campusImageNames[0]];
    
    [self changeCampusImageViewWithImage:campusImage];
}


- (void)addCampusImageToView:(UIImage *)image {
    
    self.imageViewForParrallaxView = [[UIImageView alloc] initWithFrame:CGRectMake(-parrallaxEffectRelativeValue,
                                                                                   parrallaxEffectRelativeValue,
                                                                                   [Screen width] * 2,
                                                                                   [Screen height] * 2)];
    
    self.imageViewForParrallaxView.image = image;
    self.imageViewForParrallaxView.center = self.center;
    
}


- (void)changeCampusImageViewWithImage:(UIImage *)image {
    [self addCampusImageToView:image];
}





@end
