//====================================================================================================
// Author: Peter Chen
// Created: 5/27/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import <Foundation/Foundation.h>
#import "STTwitter.h"

@interface STTwitterAPI (PCSUtils)

+ (STTwitterAPI *)shared;
+ (void)setShared:(STTwitterAPI *)shared;

@end
