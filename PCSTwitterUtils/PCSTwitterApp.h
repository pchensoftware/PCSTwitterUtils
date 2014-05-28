//====================================================================================================
// Author: Peter Chen
// Created: 5/28/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import <Foundation/Foundation.h>


@interface PCSTwitterApp : NSObject

+ (BOOL)openTwitterAppToScreenName:(NSString *)screenName;
+ (NSString *)twitterSiteURLFromScreenName:(NSString *)screenName;

@end
