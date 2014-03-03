//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import "StudentCreateViewController.h"

@interface StudentCreateViewController ()

@end

@implementation StudentCreateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resignFirstResponder:(id)sender {
    [studentFirstNameField resignFirstResponder];
    [studentLastField resignFirstResponder];
    [studentSchoolField resignFirstResponder];
    [studentGradeField resignFirstResponder];
    [studentPhoneField resignFirstResponder];
}

- (IBAction)studentCreateAccount:(id)sender {
    [mainView removeFromSuperview];
    
    [self loadstudentUrl];
}

- (IBAction)studentContinue:(id)sender {
    [studentContinue removeFromSuperview];
    NSString *calendar = @"http://calendar.google.com";
    NSURL *curl = [[NSURL alloc] initWithString: calendar];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: curl];
    [webView loadRequest: request];
    webView.scalesPageToFit = YES;
    webView.delegate = self;
}
- (int)generateRandomNumber {
    return(arc4random() % 10);
}
- (void)loadstudentUrl{
    //allocating NSURL and telling webView to use URL input
    NSString *studentURLStart = @"https://accounts.google.com/SignUp?FirstName=";
    NSString *studentURLLastName = @"&LastName=";
    NSString *studentGmailAddress = @"&GmailAddress=";
    NSString *studentRandomNumber = @"";
    NSString *tempString = @"";
    for(int i = 0; i < 4; i++){
        tempString = [NSString stringWithFormat: @"%@%d", tempString, [self generateRandomNumber]];
    }
    studentRandomNumber = tempString;
    NSString *studentGmailAddressValue = [NSString stringWithFormat:@"%@%@%@%@%@", studentLastField.text, studentFirstNameField.text, studentSchoolField.text, studentGradeField.text, studentRandomNumber];
    NSString *studentBirthStuff = @"&BirthMonth=01&BirthDay=1&BirthYear=1980&Gender=FEMALE&RecoveryPhoneNumber=";
    NSString *studentPhone = studentPhoneField.text;
    NSString *studentCheckBoxes = @"&SkipCaptcha=yes&TermsOfService=yes";
    NSString *studentURL = [NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@", studentURLStart, studentLastField.text, studentURLLastName, studentFirstNameField.text, studentGmailAddress, studentGmailAddressValue, studentBirthStuff, studentPhone, studentCheckBoxes];
    NSURL *url = [[NSURL alloc] initWithString: studentURL];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
    [webView loadRequest: request];
    webView.scalesPageToFit = YES;
    webView.delegate = self;
}

@end

