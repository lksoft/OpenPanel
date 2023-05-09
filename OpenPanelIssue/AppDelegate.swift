//
//  AppDelegate.swift
//  OpenPanelIssue
//
//  Created by Scott Little on 09/05/2023.
//

import Cocoa
import UniformTypeIdentifiers

@main
class AppDelegate: NSObject, NSApplicationDelegate {
	
	@IBOutlet var window: NSWindow!
	
	
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
	}
	
	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}
	
	func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
		return true
	}
	
	@IBAction func selectWorkspaceAsync(_ sender: NSControl) {
		Task {
			let panel = NSOpenPanel()
			panel.message = "Pick Something (async):"
			let response = await window.beginSheet(panel)
			if response == .OK {
				print("URL is: \(String(describing: panel.url))")
			}
		}
	}
	
	@IBAction func selectWorkspaceCompletion(_ sender: NSControl) {
		let panel = NSOpenPanel()
		panel.message = "Pick Something (sync):"
		window.beginSheet(panel) { response in
			if response == .OK {
				print("URL is: \(String(describing: panel.url))")
			}
		}
	}
	
}

