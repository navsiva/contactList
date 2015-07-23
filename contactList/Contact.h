//
//  Contact.h
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject {}

@property (assign) NSString *contactName;
@property (assign) NSString *contactEmail;
@property (assign) NSString *contactNumber;

//-(instancetype)initWithContactName:(NSString *)contactName contactEmail:(NSString *)contactEmail contactNumber:(NSInteger *)contactNumber;


-(void)addContact:(id)contactList;



// Contact()
// Contact(name: "Cory")

// [[Contact alloc] initWithName:@"Cory"]
@end
