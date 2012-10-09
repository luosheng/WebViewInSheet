//
//  LSWebPanel.m
//  WebViewInSheet
//
//  Created by Luo Sheng on 12-10-9.
//  Copyright (c) 2012年 Luo Sheng. All rights reserved.
//

#import "LSWebPanel.h"

@implementation LSWebPanel

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
    if (self) {
        _webView = [[WebView alloc] initWithFrame:contentRect frameName:nil groupName:nil];
        [self.contentView addSubview:_webView];
    }
    return self;
}

- (void)loadPage:(NSString *)URLString {
    NSURL *url = [NSURL URLWithString:URLString];
    [_webView.mainFrame loadRequest:[NSURLRequest requestWithURL:url]];
}

@end
