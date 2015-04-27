//
//  DITParrallaxEffect.m
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import "DITParrallaxEffect.h"


@interface DITParrallaxEffect() {
    float parrallaxRelativeValue;
}

@property(nonatomic) UIMotionEffectGroup *motionEffectGroup;


- (void) setHorizontalEffect;
- (void) setVerticalEffect;
- (void) setHorizontalAndVerticalParrallaxEffect;
- (void) addMotionEffect:(UIInterpolatingMotionEffect*) effect;

@end


@implementation DITParrallaxEffect

@synthesize motionEffectGroup = _motionEffectGroup;


- (void) addEffectForView:(UIView *)view withRelativeValue:(float)value andType:(ParrallaxType)type {
    
    self.motionEffectGroup = [[UIMotionEffectGroup alloc] init];
    
    parrallaxRelativeValue = value;
    
    
    if(type == Both) {
        [self setHorizontalAndVerticalParrallaxEffect];
    }
    else if (type == Horizontal) {
        [self setHorizontalEffect];
    }
    else if (type == Vertical) {
        [self setVerticalEffect];
    }
    
    

    
}




- (void)setHorizontalEffect {
    
    UIInterpolatingMotionEffect *horizontalMotionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type: UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    
    // Set the tilt value.
    horizontalMotionEffect.minimumRelativeValue = [[NSNumber alloc] initWithFloat: -parrallaxRelativeValue];
    horizontalMotionEffect.maximumRelativeValue = [[NSNumber alloc] initWithFloat: parrallaxRelativeValue];
    
    
    [self addMotionEffect:horizontalMotionEffect];
    
}




- (void)setVerticalEffect {
    
    UIInterpolatingMotionEffect *verticalMotionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    
    // Set the tilt value
    verticalMotionEffect.minimumRelativeValue = [[NSNumber alloc] initWithFloat: -parrallaxRelativeValue];
    verticalMotionEffect.maximumRelativeValue = [[NSNumber alloc] initWithFloat: parrallaxRelativeValue];
    
    
    [self addMotionEffect:verticalMotionEffect];
}




- (void)setHorizontalAndVerticalParrallaxEffect {
    
    [self setVerticalEffect];
    [self setHorizontalEffect];
}



- (void)addMotionEffect:(UIInterpolatingMotionEffect *)effect {
    [self.motionEffectGroup.motionEffects arrayByAddingObject:effect];
}

@end
