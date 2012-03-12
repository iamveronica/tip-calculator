//
//  ViewController.m
//  TipCalc
//
//  Created by Veronica Schade on 1/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize tipAmount, totalPay, totalBill, tipPercent;

-(IBAction) calculate; { // to calculate the numbers
    double bill = [totalBill.text doubleValue];
    double tip = [tipPercent.text doubleValue];
    if (bill >= 0 && tip >= 0) { // if statement
    double tipIs = (tip / 100) * bill; 
    double billIs = (tipIs + bill);
    NSString *resultTip = [[NSString alloc] initWithFormat: @"Tip Amount: $%.2f", tipIs];
    NSString *resultPay = [[NSString alloc] initWithFormat: @"Total To Pay: $%.2f", billIs];
    tipAmount.text = resultTip; // where the tip $ amount displays
    totalPay.text = resultPay; // where the total to pay $ amount displays
    }
}

-(IBAction) calculate:(id)sender { // the alert function
    double bill = [totalBill.text doubleValue];
    double tip = [tipPercent.text doubleValue];
    if (bill < 0 || tip < 0) { // if statement
    UIAlertView *alertDialog; 
	alertDialog = [[UIAlertView alloc] 
				   initWithTitle: @"Oh no!"
				   message:@"Please enter a positive value for Total Bill and Tip Percent" 
				   delegate:self 
				   cancelButtonTitle:@"OK" 
				   otherButtonTitles: nil]; 
        [alertDialog show]; // the alert function could end here but continues to change the values 
        NSString *resetBill = [[NSString alloc] initWithFormat: @"0.00", bill]; // changes bill to 0.00
        NSString *resetTip = [[NSString alloc] initWithFormat: @"20", tip]; // changes tip to 20
        totalBill.text = resetBill;
        tipPercent.text = resetTip;
	//[alertDialog release]; 

    }
}

-(IBAction) reset; { // button to reset (clear) the amounts
    double bill = [totalBill.text doubleValue];
    double tip = [tipPercent.text doubleValue];
    NSString *resetBill = [[NSString alloc] initWithFormat: @"", bill];
    NSString *resetTip = [[NSString alloc] initWithFormat: @"", tip];
    totalBill.text = resetBill;
    tipPercent.text = resetTip;
    double tipIs; //= (tip / 100) * bill; // just added this to clear the calculation results too
    double billIs; //= (tipIs + bill);
    NSString *resultTip = [[NSString alloc] initWithFormat: @"", tipIs];
    NSString *resultPay = [[NSString alloc] initWithFormat: @"", billIs];
    tipAmount.text = resultTip; // where the tip $ amount displays
    totalPay.text = resultPay; // where the total to pay $ amount displays
}

-(IBAction) hideKeyboard:(id)sender {
    [sender resignFirstResponder];
    [totalBill resignFirstResponder]; 
    [tipPercent resignFirstResponder];
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
