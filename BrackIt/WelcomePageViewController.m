//
//  ViewController.m
//  BrackIt
//
//  Created by William Chou on 3/31/15.
//  Copyright (c) 2015 William Chou. All rights reserved.
//

#import "WelcomePageViewController.h"
#import <Parse/Parse.h>//

@interface WelcomePageViewController ()

@end

@implementation WelcomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
