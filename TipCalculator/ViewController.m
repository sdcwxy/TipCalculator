//
//  ViewController.m
//  TipCalculator
//
//  Created by zhonglis on 10/21/17.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UILabel *savedAmount;
@property (weak, nonatomic) IBOutlet UILabel *totalAmount;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didTapSegment:(id)sender {
    [self updateValue];
}

- (IBAction)didTapBackground:(id)sender {
    [self updateValue];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateValue
{
    [self.view endEditing:YES];
    
    CGFloat billAmount = [self.textField.text floatValue];
    
    NSArray *tipValues = @[@(0.1),@(0.15),@(0.2)];
    
    CGFloat tip = billAmount * [tipValues[[self.segmentControl selectedSegmentIndex]] floatValue];
    
    self.savedAmount.text = [NSString stringWithFormat:@"$%10.2f",tip];
    self.totalAmount.text = [NSString stringWithFormat:@"$%10.2f",tip + billAmount];
}


@end
