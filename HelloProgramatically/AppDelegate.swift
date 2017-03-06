//
//  AppDelegate.swift
//  HelloProgramatically
//
//  Created by Sayem on 3/5/17.
//  Copyright © 2017 Sayem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //get optional
        let screen = UIScreen.main  // give us screen
        
        //get screen size
        let screenSize = screen.bounds  // bounds will give us the type of CGRect(CGPoint,CGSize)
        let customRect = CGRect(x: 0, y: 0, width: screenSize.size.width - 0, height: screenSize.size.height - 0)
        
        //set screen size
        self.window = UIWindow(frame: customRect)
        //get view controller
        let viewContro = ViewController()
        //set view controller
        self.window?.rootViewController  = viewContro
        viewContro.view.backgroundColor = UIColor.white
        self.window?.backgroundColor = UIColor.white    
        
        self.window?.makeKeyAndVisible()  //draw, touch events,
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

