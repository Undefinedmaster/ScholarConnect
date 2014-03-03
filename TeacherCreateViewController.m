//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import "TeacherCreateViewController.h"

@interface TeacherCreateViewController ()

@end

@implementation TeacherCreateViewController

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
    [teacherClassNameField resignFirstResponder];
    [teacherClassHourField resignFirstResponder];
    [teacherTitleField resignFirstResponder];
    [teacherLastNameField resignFirstResponder];
    [teacherPhoneField resignFirstResponder];
}

- (IBAction)teacherCreateAccount:(id)sender {
    [mainView removeFromSuperview];

    [self loadTeacherUrl];
}

- (IBAction)teacherContinue:(id)sender {
    [teacherContinue removeFromSuperview];
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
- (void)loadTeacherUrl{
    //allocating NSURL and telling webView to use URL input
    NSString *teacherURLStart = @"https://accounts.google.com/SignUp?FirstName=";
    NSString *teacherURLLastName = @"&LastName=";
    NSString *teacherGmailAddress = @"&GmailAddress=";
    NSString *teacherRandomNumber = @"";
    NSString *tempString = @"";
    for(int i = 0; i < 4; i++){
        tempString = [NSString stringWithFormat: @"%@%d", tempString, [self generateRandomNumber]];
    }
    teacherRandomNumber = tempString;
    NSString *teacherGmailAddressValue = [NSString stringWithFormat:@"%@%@%@%@%@", teacherClassHourField.text, teacherClassNameField.text, teacherTitleField.text, teacherLastNameField.text, teacherRandomNumber];
    classCode.text= teacherGmailAddressValue;
    NSString *teacherBirthStuff = @"&BirthMonth=01&BirthDay=1&BirthYear=1980&Gender=FEMALE&RecoveryPhoneNumber=";
    NSString *teacherPhone = teacherPhoneField.text;
    NSString *teacherCheckBoxes = @"&SkipCaptcha=yes&TermsOfService=yes";
    NSString *teacherURL = [NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@", teacherURLStart, teacherClassHourField.text, teacherURLLastName, teacherClassNameField.text, teacherGmailAddress, teacherGmailAddressValue, teacherBirthStuff, teacherPhone, teacherCheckBoxes];
    NSURL *url = [[NSURL alloc] initWithString: teacherURL];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
    [webView loadRequest: request];
    webView.scalesPageToFit = YES;
    webView.delegate = self;
}

@end
