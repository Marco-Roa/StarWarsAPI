//
//  SWObject.h
//  StarWarsAPI
//
//  Created by Marco Antonio Roa De La Cruz on 11/8/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol SWObject
@end
@interface SWObject : JSONModel

@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSString *height;
@property (strong, nonatomic)NSString *mass;
@property (strong, nonatomic)NSString *hairColor;
@property (strong, nonatomic)NSString *skinColor;
@property (strong, nonatomic)NSString *eyeColor;
@property (strong, nonatomic)NSString *birthYear;
@property (strong, nonatomic)NSString *gender;
@property (strong, nonatomic)NSString *homeworld;
@property (strong, nonatomic)NSMutableArray *films;
@property (strong, nonatomic)NSMutableArray *species;
@property (strong, nonatomic)NSMutableArray *vehicles;
@property (strong, nonatomic)NSMutableArray *starships;

@end
