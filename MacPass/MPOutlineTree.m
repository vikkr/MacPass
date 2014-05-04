//
//  MPOutlineTree.m
//  MacPass
//
//  Created by Michael Starke on 04.05.14.
//  Copyright (c) 2014 HicknHack Software GmbH. All rights reserved.
//

#import "MPOutlineTree.h"
#import "KPKTree.h"

@interface MPOutlineTree ()

@property (nonatomic, weak) KPKTree *tree;

@end

@implementation MPOutlineTree

+ (NSSet *)keyPathsForValuesAffectingGroups {
  NSString *treeGroups = [[NSString alloc] initWithFormat:@"%@.%@", NSStringFromSelector(@selector(tree)), NSStringFromSelector(@selector(groups)) ];
  return [NSSet setWithArray:@[NSStringFromSelector(@selector(tree)), treeGroups]];
}

- (instancetype)init {
  self = [self initWithTree:nil];
  return self;
}

- (instancetype)initWithTree:(KPKTree *)tree {
  self = [super init];
  if(self) {
    self.tree = tree;
  }
  return self;
}


- (NSArray *)groups {
  return self.tree.groups;
}

@end
