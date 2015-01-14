//
//  DieLabel.m
//  Farkle
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel


-(IBAction)onDieLabelTapped:(UITapGestureRecognizer *)die {
    NSLog(@"OnDieLabelTapped");

    //the other way around, sendingmessage rather than recieving
   [self.delegate dieLabelWasTapped:self];

}

- (void)dieLabelWasTapped:(DieLabel *)dieLabel{
    self.backgroundColor = [UIColor purpleColor];
}


-(void)roll {
    int randomNumber = arc4random_uniform(6) + 1;
    self.text = [NSString stringWithFormat:@"%d", randomNumber];
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
