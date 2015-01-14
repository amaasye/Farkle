//
//  DieLabel.h
//  Farkle
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DieLabel;


@protocol DieLabelDelegate
- (void)dieLabelWasTapped:(DieLabel *)dieLabel;

@end



@interface DieLabel : UILabel

-(void)roll;

@property id <DieLabelDelegate> delegate;

@end
