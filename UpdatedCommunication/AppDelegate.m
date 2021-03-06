//
//  AppDelegate.m
//  UpdatedCommunication
//
//  Created by New on 12/17/14.
//  Copyright (c) 2014 Braen. All rights reserved.
//
// looks like i might need to use mmwormhole for data movement
// seeing as i cant figure it out otherwise
// did a lot of javascript today

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"WatchKitSaysHello" object:self];

    return YES;
}

-(void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void (^)(NSDictionary *))reply
{
    // this probably wont run in terminal because target is watchkit
    NSLog(@"Recieved INFO from WATCH");
    
    // to the notification center inside of viewcontroller
    [[NSNotificationCenter defaultCenter] postNotificationName:@"WatchKitSaysHello" object:self];
    
    if ([userInfo objectForKey:@"four"])
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"WatchKitSaysHello" object:self];
        NSLog(@"Recieved INFO from WATCH");
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
