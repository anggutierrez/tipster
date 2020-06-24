//
//  ViewController.m
//  tipster
//
//  Created by admin on 6/24/20.
//  Copyright © 2020 codepath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipField;
@property (weak, nonatomic) IBOutlet UILabel *totalField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Screen Tapped");
    [self.view endEditing:(YES)];
}

- (IBAction)onEdit:(id)sender {
    // Create our bill floating point, grab from billField and cast it into a double
    double bill = [self.billField.text doubleValue];\
    
    // define our array of tips
    NSArray *percentages = @[@(.15), @(.20), @(.3)];
    
    // grab whatever tipPercentage is chosen
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    // create our tip value
    double tip = (bill * tipPercentage);
    
    // create our total value
    double total = (bill + tip);
    
    // Set our text to equal an NSString of our string with the tip later added as a placeholder
    // The "%.2f" signifies precision for the decimal places
    self.tipField.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalField.text =[NSString stringWithFormat:@"$%.2f", total];
}


@end
