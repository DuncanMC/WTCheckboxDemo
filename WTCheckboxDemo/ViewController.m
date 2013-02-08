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
  
/*
There are 3 ways to set the selected and notSelected icons.
  
Method 1: set the .selectedImage and notSelectedImage properties directly through code:
 
  self.theCheckbox.notSelectedImage = [UIImage imageNamed: @"Checkbox.png"];
  self.theCheckbox.selectedImage = [UIImage imageNamed: @"Checkbox-selected.png"];
  
Method 2: set the .selectedImageName and notSelectedImageName through code, 
and the buttons will load the images from the bundle:
 
  self.theCheckbox.notSelectedImageName = @"Checkbox.png";
  self.theCheckbox.selectedImageName =  @"Checkbox-selected.png";
 
Method 3: In Interface Builder, select the "identity inspector" for the WTToggleButton object
 Create keyPath & value entries for selectedImageName and notSelectedImageName, with a string value
 that specifies the images to load. This lets you specify image names in IB instead of in code.
 See the identity inspector for the WTToggleButton in this sample project for an example of this.
 
*/
  
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
