//
//  LSAppDelegate.m
//  WebViewInSheet
//
//  Created by Luo Sheng on 12-10-9.
//  Copyright (c) 2012年 Luo Sheng. All rights reserved.
//

#import "LSAppDelegate.h"
#import "LSWebPanel.h"

@implementation LSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)openWebPanel:(id)sender {
    LSWebPanel *panel = [[LSWebPanel alloc] initWithContentRect:NSMakeRect(0, 0, 770, 630) styleMask:NSUtilityWindowMask | NSNonactivatingPanelMask backing:NSBackingStoreBuffered defer:YES];
    [NSApp beginSheet:panel modalForWindow:self.window modalDelegate:nil didEndSelector:nil contextInfo:nil];
    [self.window makeFirstResponder:panel];
    [panel loadPage:@"http://google.com/ncr"];
}
@end
