//
//  PhotoObjectGroup.h
//  InstaKilo
//
//  Created by Victor Hong on 16/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhotoObjectGroup : NSObject

@property (nonatomic, readonly) NSString *name;
@property NSString *location;
@property NSString *subject;
- (instancetype)initWithName:(NSString *)name andLocation:(NSString *)location andSubject:(NSString *)subject;

@end
