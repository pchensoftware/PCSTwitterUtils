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
   NSURL *url = [NSURL URLWithString:[PCSTwitterApp appURLToUserFromScreenName:screenName]];
   return [[UIApplication sharedApplication] openURL:url];
}

+ (BOOL)openAppToTweetID:(NSString *)tweetID {
   NSURL *url = [NSURL URLWithString:[PCSTwitterApp appURLToTweetWithIDStr:tweetID]];
   return [[UIApplication sharedApplication] openURL:url];
}

+ (BOOL)openAppToHashtag:(NSString *)hashtag {
   NSURL *url = [NSURL URLWithString:[PCSTwitterApp appURLToHashtag:hashtag]];
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
   return [NSString stringWithFormat:@"twitter://search?query=%@", [searchString st_stringByAddingRFC3986PercentEscapesUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSString *)appURLToHashtag:(NSString *)hashtag {
   return [self appURLToSearchString:[@"#" stringByAppendingString:hashtag]];
}

+ (NSString *)siteURLFromScreenName:(NSString *)screenName {
   return [NSString stringWithFormat:@"http://www.twitter.com/%@", screenName];
}

+ (NSString *)siteURLFromScreenName:(NSString *)screenName tweetID:(NSString *)tweetID {
   return [NSString stringWithFormat:@"http://www.twitter.com/%@/status/%@", screenName, tweetID];
}

+ (NSString *)siteURLForSearch:(NSString *)searchText {
   return [NSString stringWithFormat:@"http://www.twitter.com/search?q=%@", [searchText st_stringByAddingRFC3986PercentEscapesUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSString *)siteURLFromHashtag:(NSString *)hashtag {
   return [self siteURLForSearch:[@"#" stringByAppendingString:hashtag]];
}

- (id)init {
   if ((self = [super init])) {
   }
   return self;
}

@end
