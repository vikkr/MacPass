//
//  MPOutlineTree.h
//  MacPass
//
//  Created by Michael Starke on 04.05.14.
//  Copyright (c) 2014 HicknHack Software GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KPKTree;

@interface MPOutlineTree : NSObject

@property (nonatomic, readonly) NSArray *groups;

- (instancetype)initWithTree:(KPKTree *)tree;

@end
