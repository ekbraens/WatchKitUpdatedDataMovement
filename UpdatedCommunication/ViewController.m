//
//  ViewController.m
//  UpdatedCommunication
//
//  Created by New on 12/17/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleWatchKitNotification:)
//                                                 name:@"WatchKitSaysHello" object:nil];
    
    // proves that my notification center is working
    //TestViewController * test = [[TestViewController alloc] init];
}

-(void)handleWatchKitNotification:(NSNotification *) notification
{
    if ([[notification name] isEqualToString:@"WatchKitSaysHello"])
    {
        [self rollD4];
    }
}

-(void)rollD4
{
    [self.dieLabel setText:@"rolled a 4 sider"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
