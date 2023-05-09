//
//  AppDelegate.m
//  OpenPanelObjC
//
//  Created by Scott Little on 09/05/2023.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
	return YES;
}


- (IBAction)openPanel:(id)sender {
	NSOpenPanel * panel = [NSOpenPanel new];
	panel.message = @"Select Something:";
	[self.window beginSheet:panel completionHandler:^(NSModalResponse returnCode) {
		if (returnCode == NSModalResponseOK) {
			NSLog(@"URL is: %@", panel.URL);
		}
	}];
}

@end
