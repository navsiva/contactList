//
//  main.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-21.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ContactList.h"
#import "InputManager.h"
#import "ContactInputManager.h"



#define MENU_CHOICE_KEY @"menuChoice"
#define QUIT_MENU_CHOICE_KEY @"quitMenuChoice"
#define SEARCH_MENU_CHOICE_KEY @"searchTerm"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *newContactList = [[ContactList alloc] init];
        
        Contact *contact1 = [[Contact alloc] init];
        contact1.contactNumber = @"4166240020";
        contact1.contactName = @"john";

        
        Contact *contact2 = [[Contact alloc] init];
        contact2.contactEmail = @"cory@email.com";
        contact2.contactName = @"cory";
        
        Contact *contact3 = [[Contact alloc] init];
        contact3.contactNumber = @"4164328904";
        contact3.contactName = @"fred";

        
        [newContactList.contacts addObject:contact1];
        [newContactList.contacts addObject:contact2];
        [newContactList.contacts addObject:contact3];
        
        InputManager *menuInputManager = [[InputManager alloc] init];

        BOOL running = YES;
        
        while(running) {
            
            
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
                
                ContactInputManager *contactIm = [ContactInputManager inputManagerForAddingContact];
                
                
//               InputManager *contactInputManager = [[InputManager alloc] init];
                
                NSDictionary *dict = [contactIm takeInput];
                
                NSLog(@"dict is %@", dict);
                
    
                
                
                [newContactList addNewContactWithDictionary:dict];
                

                    
                    
                
                
                
            }
            
            else if ([menuChoice isEqual: @"find"]){
                
                menuInputManager.inputDictionary = @{SEARCH_MENU_CHOICE_KEY : @"Find a contact by typing in find name."};
                
                
                NSDictionary *dict = [menuInputManager takeInput];
                
                NSLog(@"%@", dict[SEARCH_MENU_CHOICE_KEY]);
                
                if ([[dict[SEARCH_MENU_CHOICE_KEY] lowercaseString] hasPrefix: @"find "]) {
                    
                    NSString *searchRequest = [dict[SEARCH_MENU_CHOICE_KEY] substringFromIndex:5];
                    
                    NSLog(@"captured");

                    
                    
                    NSArray *foundContacts = [newContactList contactsMatchingString:searchRequest];
                    
                    for (Contact* contact in foundContacts) {
                    
                        NSLog(@"I found3 %@", contact);
                    
                    }
//                    
//                    for (NSString* searchRequest in foundContacts) {
//                        
//                        NSLog(@"I found %@", searchRequest);
//                        
//                        for (Contact *contact in newContactList.contacts){
//                            
//                            if (searchRequest == contact.contactName){
//                               
//                                NSLog(@"%@ %@ %@", contact.contactName, contact.contactNumber, contact.contactEmail);
//                                
//
//                            }
//                            
//                            else {
//                                
//                                NSLog(@"Contact not found");
//                                
//                                running = YES;
//                            }
//
//                            
//
//                            
//                        }
//                        
                //}
                
                }
                
                
            }
          
            
            else if ([menuChoice isEqual: @"list"]){
                
                 for (Contact *contact in newContactList.contacts){
                     
                     NSLog(@"%@", contact.contactName);
                     
                 }
                
            }

            
        }


    }
    
        return 0;
    
    
    
    



}