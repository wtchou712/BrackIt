//
//  BracketSetupViewController.m
//  BrackIt
//
//  Created by William Chou on 4/2/15.
//  Copyright (c) 2015 William Chou. All rights reserved.
//

#import "BracketSetupViewController.h"

@interface BracketSetupViewController ()

@property NSMutableArray *sizeOptions;
@property int selectedSize;

@end

@implementation BracketSetupViewController

- (IBAction)createGame:(id)sender {
    NSString *bracketName = self.bracketName.text;
    int numPlayers = [self.playerCount.text intValue];
    
    NSLog(@"%@", bracketName);
    NSLog(@"%d", numPlayers);
    NSLog(@"%d", self.selectedSize);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPickerView *picker = [[UIPickerView alloc] init];

    self.sizeOptions = [[NSMutableArray alloc] init];
    [self.sizeOptions addObject:@"2"];
    [self.sizeOptions addObject:@"4"];
    [self.sizeOptions addObject:@"8"];
    [self.sizeOptions addObject:@"16"];
    [self.sizeOptions addObject:@"32"];
    
    picker.dataSource = self;
    picker.delegate = self;
    
    self.sizeInput.inputView = picker;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.sizeOptions.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.sizeOptions objectAtIndex:row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    
    self.sizeInput.text =[self.sizeOptions objectAtIndex:row];
    self.selectedSize = [[self.sizeOptions objectAtIndex:row] intValue];
    NSLog(@"%d", self.selectedSize);
    [self.sizeInput resignFirstResponder];
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
