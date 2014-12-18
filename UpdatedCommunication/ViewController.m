//
//  ViewController.m
//  UpdatedCommunication
//
//  Created by New on 12/17/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
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
