//
//  Tardis_testAppDelegate.m
//  Tardis-test
//
//  Created by Matt Smicinski on 6/3/10.
//  Copyright 2010 Matt's Apps. All rights reserved.
//

#import "Tardis_testAppDelegate.h"

@implementation Tardis_testAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	CHGitHub *engine = [[CHGitHub alloc] init];
	[engine initWithURL:@"http://github.com/api/v2/json/"];
	NSString *searchData;
	NSString *searchURL = [[NSString alloc] initWithFormat:@"user/show/computermatt"];
	searchData = [engine initWithDataforURL:searchURL];
	[searchURL release];
	NSString *hahaitworks = [engine getUserData:@"login" forData:searchData];
	NSLog(@"%@", hahaitworks);
}

@end
