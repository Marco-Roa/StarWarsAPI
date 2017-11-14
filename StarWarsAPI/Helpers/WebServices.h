//
//  WebServices.h
//  StarWarsAPI
//
//  Created by Marco Antonio Roa De La Cruz on 11/8/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"
#import "SWObject.h"

@interface WebServices : NSObject<NSURLSessionDelegate>

+ (void)getPeople:(void (^)(NSMutableArray<SWObject> *people)) handler;
+ (void)getPerson:(NSString*)personID completion: (void (^)(NSMutableArray<SWObject> *people)) handler;

@end
