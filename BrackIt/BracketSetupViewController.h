//
//  BracketSetupViewController.h
//  BrackIt
//
//  Created by William Chou on 4/2/15.
//  Copyright (c) 2015 William Chou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BracketSetupViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *sizeInput;
@property (weak, nonatomic) IBOutlet UITextField *playerCount;
@property (weak, nonatomic) IBOutlet UITextField *bracketName;

@end
