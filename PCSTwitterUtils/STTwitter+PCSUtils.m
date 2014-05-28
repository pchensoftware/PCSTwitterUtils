//====================================================================================================
// Author: Peter Chen
// Created: 5/27/14
// Copyright 2014 Hidoodle
//====================================================================================================

#import "STTwitter+PCSUtils.h"

static STTwitterAPI *_shared = nil;
static STTwitterAPI *_sharedWithiOSAccount = nil;

@implementation STTwitterAPI (PCSUtils)

+ (STTwitterAPI *)shared {
   return _shared;
}

+ (void)setShared:(STTwitterAPI *)shared {
   _shared = shared;
}

+ (STTwitterAPI *)sharedWithiOSAccount {
   return _sharedWithiOSAccount;
}

+ (void)setSharedWithiOSAccount:(ACAccount *)account {
   _sharedWithiOSAccount = [STTwitterAPI twitterAPIOSWithAccount:account];
}

@end
