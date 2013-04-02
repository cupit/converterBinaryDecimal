//
//  ViewController.m
//  converter
//
//  Created by Maciej Cupial on 3/31/13.
//  Copyright (c) 2013 Maciej Cupial. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.converClass = [[convert alloc] init];
    
    if (self.segmentChoose.selectedSegmentIndex == 0) {
        self.titleInfo.text = @"Enter binary value";
    } else {
        self.titleInfo.text = @"Enter decimal value";
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentAction:(id)sender {
    if (self.segmentChoose.selectedSegmentIndex == 0) {
        self.titleInfo.text = @"Enter binary value";
    } else {
        self.titleInfo.text = @"Enter decimal value";
    }
}

- (IBAction)convertAction:(id)sender {
    if (self.segmentChoose.selectedSegmentIndex == 0) {
        
        NSString *tmp = [NSString stringWithFormat:@"%lld", [self.converClass binaryToDecimal:self.textField.text]];
        self.resultLabel.text = tmp;
        
    } else {
        self.resultLabel.text = [self.converClass decimalToBinary:[self.textField.text longLongValue]];
    }
}

- (IBAction)backgroundClicked:(id)sender {
    [self.textField resignFirstResponder];
}
@end
