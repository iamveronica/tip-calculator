//
//  ViewController.h
//  TipCalc
//
//  Created by Veronica Schade on 1/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *tipAmount; // to display the tip amount
    IBOutlet UILabel *totalPay; // to display the total amount to pay
    IBOutlet UITextField *totalBill; // to enter the total bill
    IBOutlet UITextField *tipPercent; // to enter the tip percent you want to leave
}

@property(nonatomic, retain) IBOutlet UILabel *tipAmount;
@property(nonatomic, retain) IBOutlet UILabel *totalPay;
@property(nonatomic, retain) IBOutlet UITextField *totalBill;
@property(nonatomic, retain) IBOutlet UITextField *tipPercent;

-(IBAction)calculate; // the button to calculate the numbers
-(IBAction)calculate:(id)sender; // the button to show the alert
-(IBAction)reset; // the button to clear the text fields
-(IBAction)hideKeyboard:(id)sender; // invisible button to hide keyboard

@end
