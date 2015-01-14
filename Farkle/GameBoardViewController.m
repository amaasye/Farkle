//
//  GameBoardViewController.m
//  Farkle
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "GameBoardViewController.h"
#import "DieLabel.h"

@interface GameBoardViewController () <DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelOne;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelTwo;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelThree;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelFour;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelFive;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelSix;


@end

@implementation GameBoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dice = [NSArray arrayWithObjects:self.dieLabelOne, self.dieLabelTwo, self.dieLabelThree, self.dieLabelFour, self.dieLabelFive, self.dieLabelSix, nil];
    for (DieLabel *dieLabel in self.dice) {
        dieLabel.delegate = self;
    }
}

- (void)dieLabelWasTapped:(DieLabel *)dieLabel {
    dieLabel.backgroundColor = [UIColor purpleColor];
    
}

- (IBAction)onRollDieButtonTapped:(UIButton *)sender {
    for (DieLabel *dieLabel in self.dice) {
        [dieLabel roll];
    }
}



@end
