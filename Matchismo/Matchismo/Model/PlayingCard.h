//
//  PlayingCard.h
//  Matchismo
//
//  Created by Brandyn Nickel on 4/8/14.
//  Copyright (c) 2014 Nickel. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
