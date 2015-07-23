//
//  Contact.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation Contact

//-(instancetype)initWithContactName:(NSString *)contactName contactEmail:(NSString *)contactEmail contactNumber:(NSInteger *)contactNumber{
//    self = [super init];
//    if(self){
//        
//        _contactName = contactName;
//        _contactEmail = contactEmail;
//        _contactNumber = contactNumber;
//        
//    }
//    return self;
//}

-(void)addContact:(ContactList *)contactList{
    
    
    
}





-(NSString *)description {
    return [NSString stringWithFormat:@"%@ %@ %@ ", self.contactName, self.contactEmail, self.contactNumber];

}

@end
