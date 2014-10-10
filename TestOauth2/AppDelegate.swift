//
//  AppDelegate.swift
//  TestOauth2
//
//  Created by admin on 10/9/14.
//  Copyright (c) 2014 abdi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.

        
        LRGooglePlusClient.sharedInstance().clientID = "339371255167-ejgk1s6ujk3eja1f1mgj5rg18oldliqm.apps.googleusercontent.com"
        
        //LRGooglePlusClient.sharedInstance().signIn(LRGooglePlusClient.sharedInstance())
        
        //UIApplication.sharedApplication().openURL()
        
        
//        var signIn = GPPSignIn.sharedInstance() as GPPSignIn
//        signIn.shouldFetchGooglePlusUser = true
//        signIn.shouldFetchGoogleUserEmail = true
//        signIn.delegate = self
        
        GPPSignIn.sharedInstance().clientID = "339371255167-ejgk1s6ujk3eja1f1mgj5rg18oldliqm.apps.googleusercontent.com"

        println("came 1")
        
        
        return true
    }
    
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String, annotation: AnyObject?) -> Bool {
        
        println("came here..")

        
        //GPPURLHandler.handleURL(url, sourceApplication: nil, annotation: nil)
        
        return GPPURLHandler.handleURL(url, sourceApplication: sourceApplication, annotation:annotation)
        
        //return true
        
        //return LRGooglePlusClient.sharedInstance().application(application, openURL: url, sourceApplication: sourceApplication, annotation: annotation)
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

