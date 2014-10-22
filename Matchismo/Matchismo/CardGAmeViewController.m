//
//  CardGAmeViewController.m
//  Matchismo
//
//  Created by Brandyn Nickel on 4/7/14.
//  Copyright (c) 2014 Nickel. All rights reserved.
//

#import "CardGAmeViewController.h"

@interface CardGAmeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGAmeViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}
- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle: @"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle: @"A♣︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
