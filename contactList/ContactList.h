//
//  ContactList.h
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

@property Contact *contact;

@property (nonatomic, strong) NSString *userInput;


-(void)addNewContact;

-(NSArray *)contactsMatchingString:(NSString *)searchString;


@end
