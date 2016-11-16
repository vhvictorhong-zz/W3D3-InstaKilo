//
//  PhotoManager.m
//  InstaKilo
//
//  Created by Victor Hong on 16/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "PhotoManager.h"

@implementation PhotoManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray *temp = [NSMutableArray new];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Chicagosign" andLocation:@"chicago" andSubject:@"sign"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Cloudgate" andLocation:@"chicago" andSubject:@"attraction"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Edgewalk" andLocation:@"toronto" andSubject:@"attraction"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Hollywoodsign" andLocation:@"los angeles" andSubject:@"sign"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Miamiseaquarium" andLocation:@"miami" andSubject:@"attraction"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Miamisign" andLocation:@"miami" andSubject:@"sign"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"RedBridge" andLocation:@"san francisco" andSubject:@"attraction"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Sanfranciscosign" andLocation:@"san francisco" andSubject:@"sign"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Torontosign" andLocation:@"toronto" andSubject:@"sign"]];
        [temp addObject:[[PhotoObjectGroup alloc] initWithName:@"Universalstudio" andLocation:@"los angeles" andSubject:@"attraction"]];
        _photoObjectArray = [temp copy];
    }
    return self;
}

-(NSMutableArray *)getArrayBySubject {
    
    NSMutableArray *arrayBySubject = [[NSMutableArray alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    for (PhotoObjectGroup *image in self.photoObjectArray) {
        if (dict[image.subject]) {
            [dict[image.subject] addObject:image];
        } else {
            dict[image.subject] = [NSMutableArray arrayWithArray:@[image]];
        }
    }
    
    for (NSString *subject in dict) {
        [arrayBySubject addObject:@[subject, dict[subject]]];
    }
    return arrayBySubject;
}

-(NSMutableArray *)getArrayByLocation {
    NSMutableArray *arrayByLocation = [[NSMutableArray alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    for (PhotoObjectGroup *image in self.photoObjectArray) {
        if (dict[image.location]) {
            [dict[image.location] addObject:image];
        } else {
            [dict setValue:[NSMutableArray arrayWithObject:image] forKey:image.location];
        }
    }
    
    for (NSString *subject in dict) {
        [arrayByLocation addObject:@[subject, dict[subject]]];
    }
    
    return arrayByLocation;
}


@end
