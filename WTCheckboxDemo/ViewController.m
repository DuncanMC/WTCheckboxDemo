//
//  ViewController.m
//  WTCheckboxDemo
//
//  Created by Duncan Champney on 2/8/13.
//  Copyright (c) 2013 WareTo. May be used for any purpose as long as this copyright notice remains.
//  WareTo logo and other artwork is Copyright (c) 2013 WareTo and may not be used outside of this demo.

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//------------------------------------------------------------------------------------------------------

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.theCheckbox.notSelectedImage = [UIImage imageNamed: @"Checkbox.png"];
  self.theCheckbox.selectedImage = [UIImage imageNamed: @"Checkbox-selected.png"];
  self.theCheckbox.selected = NO;
  [self setupCheckBoxStatusMessage];
}

//------------------------------------------------------------------------------------------------------


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

//------------------------------------------------------------------------------------------------------

- (void) setupCheckBoxStatusMessage;
{
  NSString *statusMessage;
  
  if (self.theCheckbox.selected)
    statusMessage = NSLocalizedString( @"Checkbox is selected", @"Checkbox selected message");
  else
    statusMessage = NSLocalizedString( @"Checkbox is not selected", @"Checkbox not selected message");
  self.checkboxStatusLabel.text = statusMessage;
}

//------------------------------------------------------------------------------------------------------

- (IBAction)userToggledCheckbox:(WTToggleButton *)sender
{
  //NSLog(@"Checkbox status changed. New state = %d", sender.selected);
  [self setupCheckBoxStatusMessage];
}
@end
