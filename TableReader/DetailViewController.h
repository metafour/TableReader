//
//  DetailViewController.h
//  TableReader
//
//  Created by Camron Schwoegler on 10/28/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WebViewController;

@interface DetailViewController : UIViewController <UITabBarDelegate>

@property (nonatomic) UIView *view;
@property (nonatomic) UITabBar *tabBar;
@property (nonatomic) WebViewController *articleView;
@property (nonatomic) WebViewController *commentsView;

@end
