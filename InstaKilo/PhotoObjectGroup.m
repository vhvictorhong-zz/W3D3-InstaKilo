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
        
    }
    
    return self;
}

-(void)createLocationGroup {
    
    
}


//- (void)createPhotos {
//    if ([self.name isEqualToString:@"Taylor Swift"]) {
//        [self createPhotosWithName:@"swift"];
//    }
//    if ([self.name isEqualToString:@"Iggy Pop"]) {
//        [self createPhotosWithName:@"iggy"];
//    }
//    if ([self.name isEqualToString:@"Lady Gaga"]) {
//        [self createPhotosWithName:@"lady"];
//    }
//}
//
//- (void)createPhotosWithName:(NSString *)name {
//    
//    NSMutableArray <PhotoObject *> *temp = [NSMutableArray array];
//    for (NSInteger i = 1; i < 7; ++i) {
//        NSString *imgName = [NSString stringWithFormat:@"%@%ld%ld.jpg", name, (long)0, (long)i];
//        [temp addObject:[[PhotoObject alloc] initWithName:imgName]];
//    }
//    _photoObjectGroup = [temp copy];
//    
//}


@end
