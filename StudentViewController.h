//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>{
    //iVars
    
    
    //big stuff
    __weak IBOutlet UIWebView *webView;
    __weak IBOutlet UIView *fullFillerView;
    __weak IBOutlet UIButton *studentAlready;
    __weak IBOutlet UIButton *studentGoBtn;
    
    
    
    
    
}

//methods


//URLy stuff

- (IBAction)studentGoBtn:(id)sender;

- (IBAction)studentAlready:(id)sender;


@end

