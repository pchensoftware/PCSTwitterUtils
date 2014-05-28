//====================================================================================================
// Author: Peter Chen
// Created: 5/27/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "PCSTwitterTweet.h"
#import "PCSTwitterUser.h"

@interface PCSTwitterTweet()



@end

@implementation PCSTwitterTweet

+ (NSArray *)tweetsFromAPIResponse:(NSArray *)apiResponse {
   NSMutableArray *tweets = [NSMutableArray array];
   for (NSDictionary *dict in apiResponse) {
      PCSTwitterTweet *tweet = [[PCSTwitterTweet alloc] initWithAPIResponse:dict];
      [tweets addObject:tweet];
   }
   return tweets;
}

- (id)initWithAPIResponse:(NSDictionary *)response {
   if ((self = [self init])) {
      self.idStr = response[@"id_str"];
      self.text = response[@"text"];
      self.createdAt = [NSDate date];
      self.user = [[PCSTwitterUser alloc] initWithAPIDictionary:response[@"user"]];
   }
   return self;
}

- (id)init {
   if ((self = [super init])) {
   }
   return self;
}

@end
