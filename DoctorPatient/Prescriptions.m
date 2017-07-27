//
//  Prescriptions.m
//  DoctorPatient
//
//  Created by Livleen Rai on 2017-07-27.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "Prescriptions.h"

@implementation Prescriptions

- (instancetype) init {
    
    if(self = [super init]) {
        _coldMeds = @"Advil";
        _ebolaMeds = @"Quarantine";
        _anxietyMeds = @"Vicodin";
    }
    return self;
}
@end
