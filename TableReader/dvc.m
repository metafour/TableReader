//
//  dvc.m
//  TableReader
//
//  Created by Camron Schwoegler on 10/28/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "dvc.h"

@implementation dvc

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:frame];
    [view setBackgroundColor:[UIColor blueColor]];
    [self setView:view];
}

@end
