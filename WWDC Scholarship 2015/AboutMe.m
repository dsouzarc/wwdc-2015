//
//  AboutMe.m
//  WWDC Scholarship 2015
//
//  Created by Ryan D'souza on 4/26/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "AboutMe.h"

@implementation AboutMe

- (instancetype) initWithEverything:(NSString *)title1 title2:(NSString *)title2 detail:(NSString *)detail
{
    self = [super init];
    
    if(self) {
        self.title1 = title1;
        self.title2 = title2;
        self.detail = detail;
    }
    
    return self;
}

@end
