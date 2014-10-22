//
//  PlayingCard.m
//  Matchismo
//
//  Created by Brandyn Nickel on 4/8/14.
//  Copyright (c) 2014 Nickel. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObjects:suit]) {
        _suit = suit;
    }
}
- (NSString *)suit
{
    return _suit ? _suit : @"?";
+ (NSArray *)rankStrings
    {
        return @[@"?",@"A',@"2",@"3",@"4",@"5",@6",
                 @"7",@"8",@"9",@"10",@"J",@"Q",@"K"];

    }
@end
