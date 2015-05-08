//
//  Doctor.m
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor {
    NSMutableArray *_patients;
}

-(instancetype) initWithName:(NSString*)name andSpecialization:(NSString *)specialization {
    self = [super init];
    
    if (self){
        self.name = name;
        self.specialization = specialization;
        _patients = [NSMutableArray array];
        _prescriptions = @{
                           @"pain" : @"asprin",
                           @"stomachache" : @"pepto",
                           @"headache" : @"asprin"
                           };
        
        
    }
    
    return self;
    
}

-(BOOL) acceptPatient:(Patient *) patient {
    if (patient.healthCard == YES) {
        [_patients addObject:patient];
        NSLog(@"You are accepted");
        return YES;
    } else {
        
    
    }
    return NO;
}

-(void) giveMedicine:(Patient *)patient {
    if ([_patients containsObject:patient]) {
        NSLog(@"What is your symptom?\n");
        
        NSLog(@"Patient symptom is  %@\n", patient.symptom);
        
        NSString* prescription = [_prescriptions valueForKey:patient.symptom];
        
        if (prescription == nil) {
            NSLog(@"Sorry nothing for your symptom %@\n", patient.symptom);
        } else {
            NSLog(@"Here you go! have a %@\n", prescription);
            [patient addPrescription:prescription];
        }
    }
    else {
        NSLog(@"Sorry, your not in my list\n");
    }
}

@end
