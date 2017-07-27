//
//  Doctor.h
//  DoctorPatient
//
//  Created by Livleen Rai on 2017-07-27.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescriptions.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableSet *patientList;
@property NSDictionary *symptoms;
@property NSString *patientsSymptoms;

- (instancetype) initWithName:(NSString*)name specialization:(NSString *)specialization;

- (NSString *)askPatientForInfo;

- (void)acceptPatient:(Patient *)patient healthCard:(BOOL)healthCard;;

- (NSString *)requestMedication:(Patient *)patient;

@end
