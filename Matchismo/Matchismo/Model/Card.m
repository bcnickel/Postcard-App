//
//  Card.m
//  Matchismo
//
//  Created by Brandyn Nickel on 4/8/14.
//  Copyright (c) 2014 Nickel. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
