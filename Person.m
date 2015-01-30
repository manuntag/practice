//
//  Person.m
//  practice
//
//  Created by David Manuntag on 2015-01-30.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString*)name withAge:(int)age withDOB:(NSString*)DOB {
    
    if (self = [super init]) {
        _name = name;
        _age = age;
        _dateOfBirth = DOB;
    }
    
    return self;
}

@end
