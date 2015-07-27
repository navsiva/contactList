//
//  InputManager.m
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-22.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager



- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //self.outputDictionary = [[NSDictionary alloc] init];
    }
    return self;
}


-(NSMutableDictionary *)takeInput{
    
    
    
    NSMutableDictionary *outDICT =  [[NSMutableDictionary alloc] init];
    
    for (NSString *key in self.inputDictionary) {
        NSLog(@"%@", self.inputDictionary[key]);
        
        char cstring[40];
        
        fgets (cstring, 40, stdin);
        
        
//        scanf("%s", cstring);
        
        NSString *userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
        
        userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
//        userInput = [userInput lowercaseString]; // get rid of this, make sure it doesn't need to be added anywhere else.
        
        [outDICT setObject:userInput forKey:key];
        
        
        
        
    }
    
    return outDICT;
    
}


-(NSMutableDictionary *)compareInput{
    
    NSMutableDictionary *compareDICT =  [[NSMutableDictionary alloc] init];

    
    
    return compareDICT;

}

//
//-(NSDictionary *)inputDictionary{
//    
//    NSDictionary *inputDictionary = @{
//                                @"contactName" : @"Enter a Contact name",
//                                @"contactEmail" : @"Enter a Contact email",
//                                @"contactNumber" : @"Enter a Contact number",
//                                };
//    return inputDictionary;
//}

//-(NSDictionary *)outputDictionary{
//    
//    NSDictionary *outputDictionary = @{
//                                       @"contactName" : self.contact.contactName,
//                                       @"contactEmail" : self.contact.contactEmail,
//                                       @"contactNumber" : self.contact.contactNumber,
//                                       };
//    
//    return outputDictionary;
//}


@end
