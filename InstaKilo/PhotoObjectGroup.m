//
//  PhotoObjectGroup.m
//  InstaKilo
//
//  Created by Victor Hong on 16/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "PhotoObjectGroup.h"

@implementation PhotoObjectGroup

-(instancetype)initWithName:(NSString *)name andLocation:(NSString *)location andSubject:(NSString *)subject{
    
    if (self = [super init]) {
        
        _name = name;
        _location = location;
        _subject = subject;
        _locationGroup = [NSMutableDictionary dictionary];
        _subjectGroup = [NSMutableDictionary dictionary];
        
    }
    
    return self;
}

@end
