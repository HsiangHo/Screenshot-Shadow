//
//  AppDelegate.swift
//  Screenshot Shadow
//
//  Created by Jovi on 4/24/19.
//  Copyright © 2019 Jovi. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true;
    }
    
    @IBAction func enableShadow_click(_ sender: NSButton){
        let args = ["-c", "defaults write com.apple.screencapture disable-shadow -bool FALSE & Killall SystemUIServer"]
        let task = Process()
        task.launchPath = "/bin/sh"
        task.arguments = args
        task.launch()
        let alert: NSAlert = NSAlert()
        alert.messageText = "Enable screenshot shadow successfully!";
        alert.runModal()
    }

    @IBAction func disableShadow_click(_ sender: NSButton){
        let args = ["-c", "defaults write com.apple.screencapture disable-shadow -bool TRUE & Killall SystemUIServer"]
        let task = Process()
        task.launchPath = "/bin/sh"
        task.arguments = args
        task.launch()
        let alert: NSAlert = NSAlert()
        alert.messageText = "Disable screenshot shadow successfully!";
        alert.runModal()
    }
}

