//
//  ViewController.m
//  Farkle
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "MainViewController.h"
#import "GameBoardViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    GameBoardViewController *vc = segue.destinationViewController;
    vc.navigationItem.title = @"Farkle";
}

@end
