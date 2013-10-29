//
//  WebViewController.m
//  TableReader
//
//  Created by Camron Schwoegler on 10/28/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

@synthesize requestURL, webView;

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    
    CGFloat navBarOffset = 0; // 64;
    CGFloat tabBarOffset = 50;
    
    frame.size.height = frame.size.height - navBarOffset - tabBarOffset;
    frame.origin.y = frame.origin.y + navBarOffset;
    webView = [[UIWebView alloc] initWithFrame:frame];
    [webView setScalesPageToFit:YES];
    [[webView scrollView] setContentInset:UIEdgeInsetsMake(64, 0, 0, 0)];
    NSURL *url = [NSURL URLWithString:requestURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self setView:webView];
}

-(void)viewDidLoad
{
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
}

@end
