//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Victor Hong on 16/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoObjectGroup.h"

@interface PhotoManager : NSObject

@property (nonatomic, readonly) NSArray <PhotoObjectGroup *>* photoObjectArray;

@end
