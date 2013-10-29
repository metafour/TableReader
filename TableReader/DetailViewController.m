//
//  DetailViewController.m
//  TableReader
//
//  Created by Camron Schwoegler on 10/28/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "DetailViewController.h"
#import "WebViewController.h"

@implementation DetailViewController

@synthesize view, tabBar, articleView, commentsView;

- (id)init
{
    self = [super init];
    if (self) {
        // Create and setup tab bar
        CGSize screenSize = [[UIScreen mainScreen] bounds].size;
        CGRect tbFrame = CGRectMake(0, screenSize.height - 50, screenSize.width, 50);
        tabBar = [[UITabBar alloc] initWithFrame:tbFrame];
        [tabBar setDelegate:self];

        UITabBarItem *tbi1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
        [tbi1 setTitle:@"Article"];
        [articleView setTabBarItem:tbi1];
        
        UITabBarItem *tbi2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:1];
            [tbi2 setTitle:@"comments"];
        [commentsView setTabBarItem:tbi2];

        NSArray *tabBarItems = [NSArray arrayWithObjects:tbi1, tbi2, nil];

        [tabBar setItems:tabBarItems];
        
        [tabBar setSelectedItem:tbi1];
        
        
    }
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    view = [[UIView alloc] initWithFrame:frame];
    [view addSubview:tabBar];
    [self setView:view];
    
    UIView *blackView = [[UIView alloc] init];
    [blackView setBackgroundColor:[UIColor blackColor]];
//    [self setView:blackView];
    
    articleView = [[WebViewController alloc] init];
    [articleView setRequestURL:@"http://www.metafour.org"];
    
    commentsView = [[WebViewController alloc] init];
    [commentsView setRequestURL:@"http://news.ycombinator.com"];
    
//    [articleView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"www.metafour.org"]]];
    
//    [commentsView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"news.ycombinator.org"]]];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self tabBar:tabBar didSelectItem:[articleView tabBarItem]];
//    [tabBar setSelectedItem:[articleView tabBarItem]];
}

- (void)tabBar:(UITabBar *)tb didSelectItem:(UITabBarItem *)item
{
    
    if ([item tag] == 0) {
        NSLog(@"*** Tab Bar Item 'Article' selected!");
        [[self view] insertSubview:[articleView view] belowSubview:tabBar];
    } else if ([item tag] == 1)
    {
        NSLog(@"*** Tab Bar Items 'Comments' selected!");
        [[self view] insertSubview:[commentsView view] belowSubview:tabBar];
    }
}

@end
