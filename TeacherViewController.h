//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeacherViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>{
    //iVars
    
    
    //big stuff
    __weak IBOutlet UIWebView *webView;
    __weak IBOutlet UIView *fullFillerView;
    __weak IBOutlet UIButton *teacherAlready;
    __weak IBOutlet UIButton *teacherGoBtn;    
   
    
    
 
    
}

//methods


//URLy stuff

- (IBAction)teacherGoBtn:(id)sender;

- (IBAction)teacherAlready:(id)sender;


@end
