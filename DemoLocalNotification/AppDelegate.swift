//
//  AppDelegate.swift
//  DemoLocalNotification
//
//  Created by Jerry Beers on 10/29/16.
//  Copyright © 2016 Five Pack Creative, Inc. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		if #available(iOS 10.0, *) {
			let center = UNUserNotificationCenter.current() 
			center.delegate = self                   
			center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in              
			}                      
		}
		return true
	}

	@available(iOS 10.0, *)
	func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {                     completionHandler(.alert)
	}

}
