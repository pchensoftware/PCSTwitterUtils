//====================================================================================================
// Author: Peter Chen
// Created: 5/27/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "PCSTwitterUser.h"

@interface PCSTwitterUser()



@end

@implementation PCSTwitterUser

- (id)initWithAPIDictionary:(NSDictionary *)dictionary {
   if ((self = [self init])) {
      self.name = dictionary[@"name"];
      self.screenName = dictionary[@"screen_name"];
      self.adescription = dictionary[@"description"];
      self.location = dictionary[@"location"];
      self.url = dictionary[@"url"];
   }
   return self;
}

- (id)init {
   if ((self = [super init])) {
   }
   return self;
}

@end
