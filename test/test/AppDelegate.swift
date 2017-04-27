//
//  AppDelegate.swift
//  test
//
//  Created by 마광휘 on 2017. 4. 27..
//  Copyright (c) 2017 test. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    var newWindow: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        newWindow = NSWindow(contentViewController: ViewController())

        newWindow!.makeKeyAndOrderFront(nil)
    }
    func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
    }
}
