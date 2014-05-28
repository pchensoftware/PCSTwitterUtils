//====================================================================================================
// Author: Peter Chen
// Created: 5/27/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import <Foundation/Foundation.h>
#import "PCSTwitterUser.h"

@interface PCSTwitterTweet : NSObject

@property (nonatomic, strong) NSString *idStr;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *createdAt;
@property (nonatomic, strong) PCSTwitterUser *user;

+ (NSArray *)tweetsFromAPIResponse:(NSArray *)apiResponse;
- (id)initWithAPIResponse:(NSDictionary *)response;

@end
