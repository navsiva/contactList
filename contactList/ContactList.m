//
//  ContactList.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"


#define MENU_CHOICE_KEY @"menuChoice"

#define QUIT_MENU_CHOICE_KEY @"quitMenuChoice"

#define SEARCH_MENU_CHOICE_KEY @"searchTerm"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.contacts = [[NSMutableArray alloc] init];

    }
    return self;
}

-(NSArray *)contactsMatchingString:(NSString *)searchString {
    
    NSMutableArray *found = [NSMutableArray array];
    
    
    for (Contact *contact in self.contacts){
        if ([contact.contactName isEqual: searchString]){
            //more fuzzy search containing email and other instances that contain name
            
            [found addObject:contact.contactName];
        }
        
    }
    
    return found;
    
    
}


-(instancetype)initWithFile:(NSString *)filePath {
    self = [self init];
    if (self) {
    
        // load from a plist, a bunch of contacts, and add them to self.contacts
        
        
    }
    return self;
}






-(void)addNewContactWithDictionary:(NSDictionary *)contactDict {
    Contact *newContact = [[Contact alloc] init];
    
    newContact.contactName = contactDict[@"contactName"];
    
    newContact.contactEmail = contactDict[@"contactEmail"];
    
    newContact.contactNumber = contactDict[@"contactNumber"];
    
    [self.contacts addObject:newContact];
    
    for (Contact *contact in self.contacts) {
        
        NSLog(@"%@", contact);
        
    }

}



@end
