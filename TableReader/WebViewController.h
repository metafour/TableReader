//
//  WebViewController.h
//  TableReader
//
//  Created by Camron Schwoegler on 10/28/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebViewController : UIViewController

@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, weak) NSString *requestURL;

@end
