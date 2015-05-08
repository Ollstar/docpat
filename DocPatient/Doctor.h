//
//  Doctor.h
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject
@property(nonatomic,strong) NSString* name;
@property(nonatomic,strong) NSString* specialization;
@property(nonatomic,strong) NSDictionary* prescriptions;

-(instancetype) initWithName:(NSString*)name andSpecialization:(NSString*)specialization;

-(BOOL) acceptPatient:(Patient *) patient;
-(void) giveMedicine:(Patient *) patient;






@end
