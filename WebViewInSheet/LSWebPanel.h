//
//  LSWebPanel.h
//  WebViewInSheet
//
//  Created by Luo Sheng on 12-10-9.
//  Copyright (c) 2012年 Luo Sheng. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface LSWebPanel : NSPanel {
    WebView *_webView;
}

- (void)loadPage:(NSString *)URLString;

@end
