//
//  Patient.m
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient()

@property (nonatomic) NSMutableArray *prescriptions;

@end

@implementation Patient



-(instancetype) initWithName:(NSString*)name andAge:(int)age andHealthCard:(BOOL)healthCard andSymptom:(NSString *)symptom {
    self = [super init];
    
    if (self){
        self.name = name;
        self.age = age;
        self.healthCard = healthCard;
        self.symptom = symptom;
        self.prescriptions = [NSMutableArray array];
    }
    
    return self;

}

-(void) addPrescription:(NSString *)prescription {
    [self.prescriptions addObject:(prescription)];
    NSLog(@"My prescription list includes %@\n",self.prescriptions);
}


@end
