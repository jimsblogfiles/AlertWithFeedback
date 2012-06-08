//
//  ViewController.m
//  AlertWithFeedback
//
//  Created by James Border on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

-(void)showAlert;

@end

@implementation ViewController

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
	
	if (buttonIndex == 0) {
		
		[myLabel setText:@"Do Nothing Here"];
		
	} else {
		
		[myLabel setText:@"Begin doing whatever you want done"];
		
	}
	
}

-(void)showAlert {
	
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"Alert Title Here!"
						  message:@"Do you really want to do whatever it is your doing?"
						  delegate:self 
						  cancelButtonTitle:@"Nevermind" 
						  otherButtonTitles:nil];
	
	[alert addButtonWithTitle:@"I Said Yes!"];
	[alert show];
	// release if not arc
	
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
	
    [super viewDidLoad];
	
	UIButton *bttn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[bttn setFrame:CGRectMake(10, 10, 300, 37)];
	[bttn setTitle:@"And Again" forState:UIControlStateNormal];
	[bttn addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:bttn];

	myLabel = [ [UILabel alloc ] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 43.0) ];
	[myLabel setTextAlignment:UITextAlignmentCenter];
	[myLabel setBackgroundColor:[UIColor clearColor]];
	[myLabel setCenter:self.view.center];
	[myLabel setText:@"???"];
	[self.view addSubview:myLabel];
	
	[self showAlert];
	
}

- (void)viewDidUnload
{

    [super viewDidUnload];
	myLabel = nil;

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

#pragma mark -

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
