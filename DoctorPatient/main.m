//
//  main.m
//  DoctorPatient
//
//  Created by Livleen Rai on 2017-07-27.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescriptions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *drMiller = [[Doctor alloc]initWithName:@"Dr. Miller" specialization:@"Physiotherapy"];
        Patient *george = [[Patient alloc]initWithName:@"George" ID:YES];
        
        [george visitDoctor];
        [drMiller acceptPatient:george healthCard:george.ID];
        
        [drMiller requestMedication:george];
        
        
    }
    return 0;
}
