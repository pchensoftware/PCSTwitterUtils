//====================================================================================================
// Author: Peter Chen
// Created: 5/27/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import <Foundation/Foundation.h>


@interface PCSTwitterUser : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *screenName;
@property (nonatomic, strong) NSString *adescription;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *url;

- (id)initWithAPIDictionary:(NSDictionary *)dictionary;

@end
