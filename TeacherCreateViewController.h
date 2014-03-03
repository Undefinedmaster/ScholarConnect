//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeacherCreateViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>{
    //iVars
    
    //big stuff
    IBOutlet UIView *mainView;
    __weak IBOutlet UIWebView *webView;
    
    //small stuff
    __weak IBOutlet UITextField *teacherClassNameField;
    __weak IBOutlet UIButton *resignFirstResponder;
    __weak IBOutlet UITextField *teacherClassHourField;
    __weak IBOutlet UITextField *teacherTitleField;
    __weak IBOutlet UITextField *teacherLastNameField;
    __weak IBOutlet UITextField *teacherPhoneField;
    __weak IBOutlet UILabel *teacherPhoneLabel;
    __weak IBOutlet UILabel *teacherInstructions;
    __weak IBOutlet UIButton *teacherCreateAccount;
    __weak IBOutlet UIButton *teacherContinue;
    __weak IBOutlet UILabel *uniqueLabel;
    __weak IBOutlet UILabel *classCode;
    
    
}

//methods


//URLy stuff
- (void)loadTeacherUrl;
- (int)generateRandomNumber;
- (IBAction)resignFirstResponder:(id)sender;
- (IBAction)teacherCreateAccount:(id)sender;
- (IBAction)teacherContinue:(id)sender;

@end
