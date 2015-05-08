//
//  Patient.h
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject
@property(nonatomic,strong) NSString* name;
@property(nonatomic,assign) int age;
@property(nonatomic,assign) bool healthCard;
@property(nonatomic,strong) NSString* symptom;

-(instancetype) initWithName:(NSString*)name andAge:(int)age andHealthCard:(BOOL)healthCard andSymptom:(NSString*)symptom;
-(void) addPrescription:(NSString *)prescription;

@end
