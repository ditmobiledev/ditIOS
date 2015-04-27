//
//  DITParrallaxEffect.h
//  DIT
//
//  Created by Stephen Fox on 27/04/2015.
//  Copyright (c) 2015 Stephen Fox. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    Horizontal,
    Vertical,
    Both
}ParrallaxType;

@interface DITParrallaxEffect : NSObject


// Implements a parrallax effect on a view
//
// @param view: The view you want to implement the effect on
// @param value: The movement offset for the view
// @param type: The type of parrallax effect to be set for the target
- (void) addEffectForView:(UIView *)view withRelativeValue:(float) value andType:(ParrallaxType) type;

@end
