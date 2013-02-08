//
//  ViewController.h
//  WTCheckboxDemo
//
//  Created by Duncan Champney on 2/8/13.
//  Copyright (c) 2013 WareTo. May be used for any purpose as long as this copyright notice remains.
//  WareTo logo and other artwork is Copyright (c) 2013 WareTo and may not be used outside of this demo.

#import <UIKit/UIKit.h>
#import "WTToggleButton.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *checkboxStatusLabel;
@property (weak, nonatomic) IBOutlet WTToggleButton *theCheckbox;

- (IBAction)userToggledCheckbox:(WTToggleButton *)sender;



@end
