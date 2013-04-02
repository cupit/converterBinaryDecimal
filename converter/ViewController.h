//
//  ViewController.h
//  converter
//
//  Created by Maciej Cupial on 3/31/13.
//  Copyright (c) 2013 Maciej Cupial. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "convert.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) convert *converClass;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentChoose;
@property (strong, nonatomic) IBOutlet UILabel *titleInfo;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)segmentAction:(id)sender;
- (IBAction)convertAction:(id)sender;
- (IBAction)backgroundClicked:(id)sender;



@end
