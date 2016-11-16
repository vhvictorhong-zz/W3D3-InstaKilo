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



@end
