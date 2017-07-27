//
//  Doctor.m
//  DoctorPatient
//
//  Created by Livleen Rai on 2017-07-27.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization {
    
    if(self = [super init]) {
        _name = name;
        _specialization = specialization;
        _patientList = [[NSMutableSet alloc]init];
        _symptoms = [[NSDictionary alloc]initWithObjectsAndKeys:
                     @"sore throat, stuffy nose, fever", @"Cold",
                     @"diarrhea, bleeding", @"Ebola",
                     @"shortage of breath, tension", @"Anxiety",
                     nil];
    }
    return self;
}

- (NSString *)askPatientForInfo {
    
    
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    NSString *patientInfo = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return patientInfo;
    
}

- (void)acceptPatient:(Patient *)patient healthCard:(BOOL)healthCard {
    
    
    NSLog(@"Do you have a valid health card?");
    
    if(patient.ID == YES) {
        [_patientList addObject:patient];
        NSLog(@"Welcome. My name is %@. What seems to be the problem today?", _name);
        _patientsSymptoms = [self askPatientForInfo];
    }else{
        NSLog(@"Sorry, you must have a valid health card.");
    }
    
    
}

- (NSString *)requestMedication:(Patient *)patient {
    
    if([_patientList containsObject:patient]) {
        
        Prescriptions *prescription = [[Prescriptions alloc]init];
    
        if([self.patientsSymptoms isEqualTo:[_symptoms objectForKey:@"Cold"]]) {
            [patient.prescriptionHistory addObject:prescription.coldMeds];
            NSLog(@"You have a cold. Here is a prescription for %@", prescription.coldMeds);
            return prescription.coldMeds;
        }else if([self.patientsSymptoms isEqualTo:[_symptoms objectForKey:@"Ebola"]]) {
            [patient.prescriptionHistory addObject:prescription.ebolaMeds];
            NSLog(@"You have Ebola. I would suggest %@.", prescription.ebolaMeds);
        return prescription.ebolaMeds;
        }else if([self.patientsSymptoms isEqualTo:[_symptoms objectForKey:@"Anxiety"]]) {
            [patient.prescriptionHistory addObject:prescription.anxietyMeds];
            NSLog(@"You have anxiety. Here is a prescription for %@.", prescription.anxietyMeds);
            return prescription.anxietyMeds;
        }else{
            NSString *noMeds = @"Rest and drink lots of water.";
            return noMeds;
        }
        
    }else{
        return 0;
    }
}
@end
