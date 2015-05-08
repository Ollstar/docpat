//
//  Medicine.m
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import "Medicine.h"

@implementation Medicine

-(instancetype) initWithName:(NSString*)name andSymptomsTreated:(NSString*)symptomsTreated {
    self = [super init];
    
    if (self){
        self.name = name;
        self.symptomsTreated = symptomsTreated;
    }
    
    return self;
}

@end
