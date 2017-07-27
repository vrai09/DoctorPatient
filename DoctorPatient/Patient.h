//
//  Patient.h
//  DoctorPatient
//
//  Created by Livleen Rai on 2017-07-27.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property NSString *name;
@property BOOL ID;
@property NSString *symptoms;
@property (readonly)NSMutableSet *prescriptionHistory;

- (instancetype)initWithName:(NSString *)name ID:(BOOL)ID;

- (void)visitDoctor;

@end
