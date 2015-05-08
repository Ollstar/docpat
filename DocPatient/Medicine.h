//
//  Medicine.h
//  DocPatient
//
//  Created by Oliver Andrews on 2015-05-07.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medicine : NSObject
@property(nonatomic,strong) NSString* name;
@property(nonatomic,strong) NSString* symptomsTreated;

-(instancetype) initWithName:(NSString*)name andSymptomsTreated:(NSString*)symptomsTreated;

@end
