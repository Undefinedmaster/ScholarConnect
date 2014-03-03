//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentCreateViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>{
    //iVars
    
    //big stuff
    IBOutlet UIView *mainView;
    __weak IBOutlet UIWebView *webView;
    
    //small stuff
    __weak IBOutlet UITextField *studentFirstNameField;
    __weak IBOutlet UIButton *resignFirstResponder;
    __weak IBOutlet UITextField *studentLastField;
    __weak IBOutlet UITextField *studentSchoolField;
    __weak IBOutlet UITextField *studentGradeField;
    __weak IBOutlet UITextField *studentPhoneField;
    __weak IBOutlet UILabel *studentPhoneLabel;
    __weak IBOutlet UILabel *studentInstructions;
    __weak IBOutlet UIButton *studentCreateAccount;
    __weak IBOutlet UIButton *studentContinue;
    __weak IBOutlet UILabel *scholarConnectLabel;

    
    
}

//methods


//URLy stuff
- (void)loadstudentUrl;
- (int)generateRandomNumber;
- (IBAction)resignFirstResponder:(id)sender;
- (IBAction)studentCreateAccount:(id)sender;
- (IBAction)studentContinue:(id)sender;

@end

