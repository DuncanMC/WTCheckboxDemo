//
//  WTToggleButton.m
//  SaveMyPlace
//
//  Created by Duncan Champney on 12/29/09.
//  Copyright 2009 WareTo. May be used for any purpose as long as this copyright notice remains.
//  WareTo logo and other artwork is Copyright (c) 2013 WareTo and may not be used outside of this demo.

#import "WTToggleButton.h"


@implementation WTToggleButton

//------------------------------------------------------------------------------------------------------
#pragma mark property methods
//------------------------------------------------------------------------------------------------------


- (void) setSelected: (BOOL) newValue;
{
	if (newValue != self.isSelected)
	{
		[super setSelected: newValue];
		if (newValue)
			[self setImage: _selectedImage forState: UIControlStateNormal];
    else
			[self setImage: _notSelectedImage forState: UIControlStateNormal];
	} 
}
//------------------------------------------------------------------------------------------------------

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
  [super beginTrackingWithTouch:touch withEvent:event];
  
  return YES;
}

//------------------------------------------------------------------------------------------------------

- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
  [super continueTrackingWithTouch:touch withEvent:event];
  return YES;
}

//------------------------------------------------------------------------------------------------------

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
  [super endTrackingWithTouch:touch withEvent:event];
  if (CGRectContainsPoint(self.bounds,[touch locationInView: self]))
  {
    self.selected = !self.selected;
    [self sendActionsForControlEvents:UIControlEventValueChanged];
  }
}

//------------------------------------------------------------------------------------------------------

- (void)cancelTrackingWithEvent:(UIEvent *)event
{
  [super cancelTrackingWithEvent:event];
}

//------------------------------------------------------------------------------------------------------

-(void) setNotSelectedImage: (UIImage*) newImage;
{
  _notSelectedImage = newImage;
  if (!self.isSelected)
  {
    [self setImage: _notSelectedImage forState: UIControlStateNormal];
  }
}

//------------------------------------------------------------------------------------------------------

-(void) setSelectedImage: (UIImage*) newImage;
{
  _selectedImage = newImage;
  if (self.isSelected)
  {
    //UIButtons don't use their "selected" state, so set the non-selected state.
    [self setImage: _selectedImage forState: UIControlStateNormal];
  }
}


//------------------------------------------------------------------------------------------------------
#pragma mark init/dealloc methods
//------------------------------------------------------------------------------------------------------

- (void)dealloc 
{
	self.notSelectedImage = nil;
	self.selectedImage = nil;
}

@end
