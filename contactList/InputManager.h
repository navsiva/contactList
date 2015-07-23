//
//  InputManager.h
//  contactList
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-07-22.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Contact.h"

@interface InputManager : NSObject

@property (nonatomic, strong) NSDictionary *inputDictionary;

//@property (nonatomic, strong) NSDictionary *outputDictionary;

//@property Contact *contact;


-(NSMutableDictionary *)takeInput;

-(NSMutableDictionary *)compareInput;




@end
