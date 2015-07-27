//
//  ContactInputManager.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-24.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "ContactInputManager.h"

@implementation ContactInputManager



+(instancetype)inputManagerForAddingContact {
    
    
    ContactInputManager *im = [[ContactInputManager alloc] init];
    
    im.inputDictionary = @{
                           @"contactName" : @"Enter a Contact name",
                           @"contactEmail" : @"Enter a Contact email",
                           @"contactNumber" : @"Enter a Contact number",
                           };
    
    return im;
    
}


//+(instancetype)inputManagerForMenu {
//    
//
//}


@end
