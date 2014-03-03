//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import "StudentViewController.h"

@interface StudentViewController ()

@end

@implementation StudentViewController

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





- (IBAction)studentGoBtn:(id)sender {
    
    [self performSegueWithIdentifier:@"studentCreate" sender:self];}
//the webView request should start loading
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:
(NSURLRequest *)request navigationType:
(UIWebViewNavigationType)navigationType{
    NSLog(@"webView should start loading request");
    return YES;
}
//the webView request did start loading
-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"webView did start loading");
    
}
//the webView did finish loading
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"webView did start loading");
}
//if webView had an error report it
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"There was an error loading the request. Error info: %@", error);
}



- (IBAction)studentAlready:(id)sender {
    //[fullFillerView removeFromSuperview];
    
    [studentGoBtn removeFromSuperview];
    
    NSString *calendar = @"http://calendar.google.com";
    NSURL *curl = [[NSURL alloc] initWithString: calendar];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: curl];
    [webView loadRequest: request];
    webView.scalesPageToFit = YES;
    webView.delegate = self;
    [studentAlready removeFromSuperview];
}



@end

