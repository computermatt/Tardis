//
//  MSOEngine.h
//  MSOEngine
//
//  Created by Matt on 4/6/10.
//  Copyright 2010 Matt's Apps. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "JSON.h"


@interface CHGitHub : NSObject {
	NSString *_url;
	
}

	//required
-(void)initWithURL:(NSString *)newurl;
-(NSString*)initWithDataforURL:(NSString *)url;

	//methods

-(NSString *)getUserData:(NSString*)key forData:(NSString *)data;


-(NSString *)connectMekThxBai:(NSString *)data firstkey:(NSString *)key1 secondkey:(NSString *)key2;


@end
