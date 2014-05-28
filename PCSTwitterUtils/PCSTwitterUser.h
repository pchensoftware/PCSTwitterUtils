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

// Derived from properties
@property (nonatomic, readonly) NSString *screenNameAt;
@property (nonatomic, readonly) NSString *nameAndScreenNameAt;

- (id)initWithAPIDictionary:(NSDictionary *)dictionary;

@end
