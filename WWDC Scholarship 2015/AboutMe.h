//
//  AboutMe.h
//  WWDC Scholarship 2015
//
//  Created by Ryan D'souza on 4/26/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AboutMe : NSObject

@property (strong, nonatomic) NSString *title1;
@property (strong, nonatomic) NSString *title2;
@property (strong, nonatomic) NSString *detail;

- (instancetype) initWithEverything:(NSString*)title1 title2:(NSString*)title2 detail:(NSString*)detail;

@end
