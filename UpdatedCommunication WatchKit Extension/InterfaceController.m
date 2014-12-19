//
//  InterfaceController.m
//  UpdatedCommunication WatchKit Extension
//
//  Created by New on 12/17/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//
// build build

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    NSLog(@"%@ awakeWithContext", self);
}

- (IBAction)rollD4 {
    NSDictionary * request = @{@"four":@4};
    
    [InterfaceController openParentApplication:request reply:^(NSDictionary *replyInfo, NSError *error) {
        if (error)
        {
            NSLog(@"done fucked up");
        }
        else{
            NSLog(@"sent back again, tide in tide out");
        }
    }];
}

- (IBAction)rollD6 {
}

- (IBAction)rollD8 {
}

- (IBAction)rollD20 {
}

//-(void)openParentPhoneApp:(NSString *) roll
//{
//    
//}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



