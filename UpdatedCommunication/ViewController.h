//
//  ViewController.h
//  UpdatedCommunication
//
//  Created by New on 12/17/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@protocol ViewControllerDelegate

@end

@interface ViewController : UIViewController

@property (nonatomic, assign) id delegate;

-(void)rollD4;

@end

