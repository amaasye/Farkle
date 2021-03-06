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
@property (weak, nonatomic) IBOutlet UILabel *userOneScore;
@property (weak, nonatomic) IBOutlet UILabel *userTwoScore;
@property int scoreOne;
@property int scoreTwo;



@end

@implementation GameBoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dice = [NSMutableArray arrayWithObjects:self.dieLabelOne, self.dieLabelTwo, self.dieLabelThree, self.dieLabelFour, self.dieLabelFive, self.dieLabelSix, nil];
     self.heldDice = [[NSMutableArray alloc]init];
    for (DieLabel *dieLabel in self.dice) {
        dieLabel.delegate = self;
    }
}

- (void)dieLabelWasTapped:(DieLabel *)dieLabel {
    int score = [self.
    dieLabel.backgroundColor = [UIColor purpleColor];
    [self.heldDice addObject:dieLabel];

}

- (IBAction)onRollDieButtonTapped:(UIButton *)sender {
    for (DieLabel *dieLabel in self.heldDice) {
        dieLabel.userInteractionEnabled = NO;
    }
    for (DieLabel *dieLabel in self.dice) {
        if (dieLabel.userInteractionEnabled == YES) {
            [dieLabel roll];
        }

    }
}
- (IBAction)onCollectButtonPressed:(UIButton *)sender {
}



@end
