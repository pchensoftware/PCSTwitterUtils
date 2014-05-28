//====================================================================================================
// Author: Peter Chen
// Created: 5/28/14
// Copyright 2014 Hidoodle
//
// http://wiki.akosma.com/IPhone_URL_Schemes#Twitter
//====================================================================================================

#import "PCSTwitterApp.h"

@interface PCSTwitterApp()



@end

@implementation PCSTwitterApp

+ (BOOL)openAppToScreenName:(NSString *)screenName {
   NSURL *url = [[PCSTwitterApp appURLToUserFromScreenName:screenName] toUrl];
   return [[UIApplication sharedApplication] openURL:url];
}

+ (BOOL)openAppToTweetID:(NSString *)tweetID {
   NSURL *url = [[PCSTwitterApp appURLToTweetWithIDStr:tweetID] toUrl];
   return [[UIApplication sharedApplication] openURL:url];
}

+ (NSString *)appURLToUserFromScreenName:(NSString *)screenName {
   return [NSString stringWithFormat:@"twitter://user?screen_name=%@", screenName];
}

+ (NSString *)appURLToPostWithInitialText:(NSString *)text {
   return [NSString stringWithFormat:@"twitter://post?message=%@", text];
}

+ (NSString *)appURLToTweetWithIDStr:(NSString *)idStr {
   return [NSString stringWithFormat:@"twitter://status?id=%@", idStr];
}

+ (NSString *)appURLToSearchString:(NSString *)searchString {
   return [NSString stringWithFormat:@"twitter://search?query=%@", searchString];
}

+ (NSString *)siteURLFromScreenName:(NSString *)screenName {
   return [NSString stringWithFormat:@"http://www.twitter.com/%@", screenName];
}

+ (NSString *)siteURLFromScreenName:(NSString *)screenName tweetID:(NSString *)tweetID {
   return [NSString stringWithFormat:@"http://www.twitter.com/%@/status/%@", screenName, tweetID];
}

- (id)init {
   if ((self = [super init])) {
   }
   return self;
}

@end
