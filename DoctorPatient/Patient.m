//
//  Patient.m
//  DoctorPatient
//
//  Created by Livleen Rai on 2017-07-27.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name ID:(BOOL)ID {
    
    if(self = [super init]) {
        _name = name;
        _ID = ID;
        _prescriptionHistory = [[NSMutableSet alloc]init];
    }
    return self;
}

- (void)visitDoctor {
    
    NSLog(@"Hi my name is %@", _name);
    
}
@end
