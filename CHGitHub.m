//
//  MSOEngine.m
//  MSOEngine
//
//  Created by Matt on 4/6/10.
//  Copyright 2010 Matt's Apps. All rights reserved.
//

#import "CHGitHub.h"


@implementation CHGitHub


-(NSString*)initWithDataforURL:(NSString *)data
{
	NSString *theURL = [[NSString alloc] initWithFormat:@"%@%@", _url, data];
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:theURL]];
	NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	
	// Get JSON as a NSString from NSData response
	NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
	return json_string;
}


-(void)initWithURL:(NSString *)newurl
{
	[_url release];
	_url = [newurl retain];
}


-(NSString *)connectMekThxBai:(NSString *)data firstkey:(NSString *)key1 secondkey:(NSString *)key2
{

	NSMutableArray *array;
	array = [[NSMutableArray alloc] init];
	SBJSON *parser = [[SBJSON alloc] init];
	
	NSMutableDictionary *jsonObj = [parser objectWithString:data error:nil];
	
	NSString *two = [[jsonObj objectForKey:key1] valueForKey:key2];
	return two;

}

-(NSString *)getUserData:(NSString*)key forData:(NSString *)data
{
	
	//	NSString *theURL = [[NSString alloc] initWithFormat:@"%@users/%d?key=%@",_url, theID, _apikey];
	NSString *result = [self connectMekThxBai:data 
								   firstkey:@"user" 
								  secondkey:key];
//	NSLog(@"%@", result);
	return result;
}
@end
