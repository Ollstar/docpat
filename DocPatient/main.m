//
//  main.m
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] initWithName:@"Dr. Andrews" andSpecialization:@"Medicine"];
        Patient *patient = [[Patient alloc] initWithName:@"Stacy" andAge:25 andHealthCard:YES andSymptom:@"headache"];
        Patient *patient2 = [[Patient alloc] initWithName:@"Joe" andAge:32 andHealthCard:YES andSymptom:@"stomachache"];
        

        [doctor acceptPatient:patient];
        [doctor acceptPatient:patient2];

        [doctor giveMedicine: patient];
        [doctor giveMedicine: patient2];
    

    }
    return 0;
}
