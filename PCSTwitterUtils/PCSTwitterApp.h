//====================================================================================================
// Author: Peter Chen
// Created: 5/28/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import <Foundation/Foundation.h>


@interface PCSTwitterApp : NSObject

+ (BOOL)openAppToScreenName:(NSString *)screenName;
+ (BOOL)openAppToTweetID:(NSString *)tweetID;
+ (NSString *)siteURLFromScreenName:(NSString *)screenName;
+ (NSString *)siteURLFromScreenName:(NSString *)screenName tweetID:(NSString *)tweetID;

@end
