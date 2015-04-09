//
//  PlayerInputsViewController.m
//  BrackIt
//
//  Created by William Chou on 4/7/15.
//  Copyright (c) 2015 William Chou. All rights reserved.
//

#import "PlayerInputsViewController.h"

@interface PlayerInputsViewController ()


@end

@implementation PlayerInputsViewController

-(void)buildUserInputs {
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect textFieldFrame = CGRectMake((screenWidth/2 - 120), screenHeight/3, 240, 40.0);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldFrame];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    [textField setTag:1001];
    [textField setTextColor:[UIColor blackColor]];
    [textField setFont:[UIFont systemFontOfSize:20]];
    [textField setDelegate:self];
    [textField setPlaceholder:@"Text field here"];
    [textField setBackgroundColor:[UIColor whiteColor]];
    textField.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:textField];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self buildUserInputs];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
