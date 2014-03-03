//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//



#import <UIKit/UIKit.h>

@interface ScholarConnectViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate>{
    //iVars
    
    //start page
    __weak IBOutlet UILabel *teacherOrStudentLabel;
    __weak IBOutlet UIButton *studentButton;
    __weak IBOutlet UIButton *teacherButton;
    
    
}

//methods

//start page
- (IBAction)studentButton:(id)sender;
- (IBAction)teacherButton:(id)sender;

@end
