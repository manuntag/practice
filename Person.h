//
//  Person.h
//  practice
//
//  Created by David Manuntag on 2015-01-30.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString * name;
@property (nonatomic) int  age;
@property (strong, nonatomic) NSString * dateOfBirth;
@property (strong, nonatomic) NSIndexPath * indexPath;

-(instancetype)initWithName:(NSString*)name withAge:(int)age withDOB:(NSString*)DOB;

@end
