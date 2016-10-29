//
//  ViewController.swift
//  DemoLocalNotification
//
//  Created by Jerry Beers on 10/29/16.
//  Copyright © 2016 Five Pack Creative, Inc. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
	@IBAction func buttonTapped() {
		let content = UNMutableNotificationContent()
		content.title = "Title"
		content.subtitle = "subtitle"
		content.body = "Body"
		content.categoryIdentifier = "category"                      
		
		let trigger = UNTimeIntervalNotificationTrigger(
			timeInterval: 3.0,
			repeats: false)
		
		let request = UNNotificationRequest(
			identifier: "identifier",
			content: content,
			trigger: trigger
		)
		
		UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
	}
}
