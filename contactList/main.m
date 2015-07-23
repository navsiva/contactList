//
//  main.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //***bonus update contactList plist on load and save it on exit
        
        ContactList *newContactList = [[ContactList alloc] init];
        
        Contact *contact1 = [[Contact alloc] init];
        contact1.contactNumber = @"4166240020";
        
        Contact *contact2 = [[Contact alloc] init];
        contact2.contactEmail = @"cory@email.com";
        contact2.contactName = @"cory";
        
        Contact *contact3 = [[Contact alloc] init];
        contact3.contactNumber = @"4164328904";
        
        [newContactList.contacts addObject:contact1];
        [newContactList.contacts addObject:contact2];
        [newContactList.contacts addObject:contact3];
       

        NSString *userInput;
        
//        
//        BOOL running = YES;
//        
//        while(running) {
//            
//            
           [newContactList displayMenu];
            
            
            char cstring[40];
            scanf("%s", cstring);
            
            userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
            
//            if ([userInput  isEqual: @"quit"]){
//                
//                NSLog(@"Are you sure you want to quit? Type Yes to exit or No to display menu.");
//                scanf("%s", cstring);
//                
//                userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//                
//                userInput = [userInput lowercaseString];
//                
//                if ([userInput isEqual: @"yes"]){
//                    
//                    running = NO;
//                }
//                
//                else {
//                    
//                    running = YES;
//                    
//                }
//                
//            }
            
//            else if ([userInput isEqual: @"new"]){
//                
//                
//                [newContactList addNewContact];
//
//                
//            }
        
//            else if ([userInput isEqual: @"list"]){
//                
//                //display all items in array and display index count/unique id in list and return to main menu
//                
//            }
//            
//            else if ([userInput containsString: @"show"]){
//                
//                //***the user can type in show along with an id (index) of the contact to display their details. If a contact with that index/id is found, display their details, with each field being printed on an individual line. If the contact cannot be found, display a "not found" message.
//                
//            }
//            
//            else if ([userInput containsString: @"find"]){
//                
                //***After typing in a find command, along with a search term, the app will search through the names of the contacts and print the contact details of any contacts which have the search term contained within their name or email. ie. find ted
//
//                
//                NSArray *foundContacts = [newContactList contactsWithOnlyImages];
//                
//                NSLog(@"I found %@", foundContacts);
//                
//                
//            }
        }
        
        return 0;
    }
//}


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
//        NSLog(@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application");
//
//        scanf("%s", cstring);
//
//        userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
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
//                running = YES;
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
//            // [contacts addContact:newContact]
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
//         Contact *contact = [[Contact alloc] init];
//
//         ContactList *contactList = [[ContactList alloc] init];


