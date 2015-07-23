//
//  ContactList.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"
#import "InputManager.h"

#define MENU_CHOICE_KEY @"menuChoice"

#define QUIT_MENU_CHOICE_KEY @"quitMenuChoice"

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
//        if (contact.contactName
//        
//    }
//    
    
//    for (Contact *contact in self.contacts) {
//        if (contact.contactNumber && !(contact.contactName || contact.contactEmail)) {
//            [found addObject:contact];
//        }
//    }
//

    
    return found;
    
    
}


-(instancetype)initWithFile:(NSString *)filePath {
    self = [self init];
    if (self) {
    
        // load from a plist, a bunch of contacts, and add them to self.contacts
        
        
    }
    return self;
}


-(void)displayMenu{
    
    BOOL running = YES;
    
    while(running) {
    
    InputManager *menuInputManager = [[InputManager alloc] init];

    menuInputManager.inputDictionary = @{MENU_CHOICE_KEY : @"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application find - Find Contact"};
    
    NSDictionary *dict = [menuInputManager takeInput];
    
    NSLog(@"dict is %@", dict);
        
        
        
        NSString *menuChoice = [dict[MENU_CHOICE_KEY] lowercaseString];
    
    if ([menuChoice isEqual: @"quit"]){
        
        menuInputManager.inputDictionary = @{QUIT_MENU_CHOICE_KEY : @"Are you sure you want to quit? Type Yes to exit or No to display menu."};
        
        NSDictionary *dict = [menuInputManager takeInput];
        
        if ([dict[QUIT_MENU_CHOICE_KEY] isEqual: @"yes"]){
            
            running = NO;
        }
        
        else {
            
            running = YES;
            
        }
        
    }
    
    else if ([menuChoice isEqual: @"new"]){
        
        
        [self addNewContact];
        
        
    }
        
//    else if ([dict[MENU_CHOICE_KEY] hasPrefix: @"find "]){
        
    else if ([menuChoice isEqual: @"find"]){
        
        
        // split the menu choice string on the charater " "
        // take the last string in the array and use it to search.
        
        
        
        //***After typing in a find command, along with a search term, the app will search through the names of the contacts and print the contact details of any contacts which have the search term contained within their name or email. ie. find ted
        
        
        
        //        BOOL searching = YES;
        //        while (searching == YES){
        
        menuInputManager.inputDictionary = @{@"searchTerm" : @"Find a contact by typing in find name."};
        
        
        NSDictionary *dict = [menuInputManager takeInput];
        
        NSLog(@"%@", dict[@"searchTerm"]);
        
        if ([[dict[@"searchTerm"] lowercaseString] hasPrefix: @"find "]) {
            
            NSString *searchRequest = [dict[@"searchTerm"] substringFromIndex:5];
            
            
            
            
            NSArray *foundContacts = [self contactsMatchingString:searchRequest];
            
            for (NSString* searchRequest in foundContacts) {
                
                NSLog(@"I found %@", searchRequest);
            }
            
            
            
            
        }
        
//        else {
//        
//            menuInputManager.inputDictionary = @{@"searchTerm" : @"Incorrect search query. Type in find and then the searh name. Example: find cory."};
//            
//            [menuInputManager takeInput];
//            
////            searching = YES;
//            
//        }
        
//        }
    
    }

        

    
//    NSDictionary *dict = [displayInputManager takeInput];

    }
}

-(void)addNewContact{
    
    
    
//    char cstring[40];
//    NSLog(@"Please enter a Contact Name.");
//    scanf("%s", cstring);
//    
//    NSString *userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//    
//    
//    Contact *newContact = [[Contact alloc] init];

        InputManager *contactInputManager = [[InputManager alloc] init];
    
    
    //*** overriding InputManager with new properties for dictionary
   //newInputManager.inputDictionary = @{@"contactName" : @"como se llama"};
    
    NSDictionary *dict = [contactInputManager takeInput];
    
    NSLog(@"dict is %@", dict);
    
    [self addNewContactWithDictionary:dict];
    
//    Contact *newContact = [[Contact alloc] init];
//    
//    newContact.contactName = dict[@"contactName"];
//    
//    newContact.contactEmail = dict[@"contactEmail"];
//    
//    newContact.contactNumber = dict[@"contactNumber"];
//    
//    [self.contacts addObject:newContact];
//    
//    for (Contact *contact in self.contacts) {
//
//        NSLog(@"%@", contact);
//    
//    }

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


//                scanf("%s", cstring);
//    
//                userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//
//    
//                newContact.contactName = userInput;
//    
//                NSLog(@"Please enter the Contact's Email.");
//                scanf("%s", cstring);
//    
//                userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//    
//                newContact.contactEmail = userInput;
//    
//                NSLog(@"Please enter a Contact Number.");
//                scanf("%s", cstring);
//    
//                userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//    
//                newContact.contactNumber = userInput;
//    
//    
//                [self.contacts addObject:newContact];

    



//-(void)displayMenu:(Contact*)contact {
//    
//    NSLog(@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application");
//
//    char cstring[40];
//    scanf("%s", cstring);
//    
//    NSString *userInput;
//
//    BOOL running = YES;
//    
//    
//    //Keep looping menu display until user confirms exit
//    
//    //make the list we're going to interact with (contactlist object)
//    
//    while(running) {
//        
//
//            NSLog(@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application");
//        
//            scanf("%s", cstring);
//        
//            userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//
//        if ([userInput  isEqual: @"quit"]){
//            
//            NSLog(@"Are you sure you want to quit? Type Yes to exit or No to display menu.");
//            scanf("%s", cstring);
//            
//            userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//
//
//            if ([userInput isEqual: @"yes"]){
//            
//                running = NO;
//            }
//            
//            else if ([userInput isEqual: @"Yes"]){
//                
//                running = NO;
//            }
//            else {
//            
//            running = YES;
//                
//            }
//        }
//        
//        else if ([userInput isEqual: @"new"]){
//            
//            Contact *newContact = [[Contact alloc] init];
//
//            
//            NSLog(@"Please enter a Contact Name.");
//            scanf("%s", cstring);
//            
//            userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//            
//            //
//            
//            self.contact.contactName = userInput;
//            
//            NSLog(@"Please enter the Contact's Email.");
//            scanf("%s", cstring);
//            
//            userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//            
//            self.contact.contactEmail = userInput;
//            
//            //[self.contacts addObject:newContact];
//            
//            NSLog(@"Please enter a Contact Number.");
//            scanf("%s", cstring);
//            
//            userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//
//            self.contact.contactNumber = userInput;
//            
//
//            
//          // [contacts addContact:newContact]
//            
//            NSLog(@"%@", self.contact);
//            running = YES;
//        }
//        
//        else {
//            
//            NSLog(@"Please enter a valid input");
//            running = YES;
//        }
//    
//    }
//
//}
//
//-(void)setupContactsArray{

 //   NSMutableArray *contacts = [[NSMutableArray alloc] init];
    
//    Contact *contact = [[Contact alloc] init];
//    [self.contacts addObject:contact];
    
//}


@end
