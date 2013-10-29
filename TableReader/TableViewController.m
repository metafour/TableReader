//
//  TableViewController.m
//  TableReader
//
//  Created by Camron Schwoegler on 10/28/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "TableViewController.h"
#import "DetailViewController.h"
#import "WebViewController.h"

@implementation TableViewController

- (id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

#pragma mark - UITableView Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"UITableViewCell"];
    }
    
    return cell;
}

#pragma mark - UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSInteger row = [indexPath row];
    
    // Detail View Controller
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    [[self navigationController] pushViewController:detailViewController animated:YES];
    
    // Web View Controller
//    WebViewController *webView = [[WebViewController alloc] init];
//    [webView setRequestURL:@"http://news.ycombinator.com"];
//    [[self navigationController] pushViewController:webView animated:YES];
}

@end
