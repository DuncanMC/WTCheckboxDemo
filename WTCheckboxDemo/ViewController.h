//
//  ViewController.h
//  WTCheckboxDemo
//
//  Created by Duncan Champney on 2/8/13.
//  Copyright (c) 2013 Duncan Champney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTToggleButton.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *checkboxStatusLabel;
@property (weak, nonatomic) IBOutlet WTToggleButton *theCheckbox;

- (IBAction)userToggledCheckbox:(WTToggleButton *)sender;

@end
