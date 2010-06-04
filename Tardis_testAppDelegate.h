//
//  Tardis_testAppDelegate.h
//  Tardis-test
//
//  Created by Matt Smicinski on 6/3/10.
//  Copyright 2010 Matt's Apps. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CHGitHub.h"
@interface Tardis_testAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
