//
//  ContactList.h
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@class Apples;

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

@property (nonatomic, strong) NSString *userInput;

@property (nonatomic, strong) Apples *apple;


-(NSArray *)contactsMatchingString:(NSString *)searchString;
-(void)addNewContactWithDictionary:(NSDictionary *)contactDict;

@end
