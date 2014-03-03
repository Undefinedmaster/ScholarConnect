//
//  Created by Ezra Kalmowitz and Alex Raistrick on 2/16/14.
//  Copyright (c) 2013 Ezra Kalmowitz and Alex Raistrick. All rights reserved.
//

#import "ScholarConnectViewController.h"

@interface ScholarConnectViewController ()

@end

@implementation SimpleBrowserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   /* for(UIView *view in self.view.subviews)
    {
        [view removeFromSuperview];
    }*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//removing keyboard and loading web page


- (IBAction)studentButton:(id)sender {
    [self performSegueWithIdentifier:@"student" sender:self];}

- (IBAction)teacherButton:(id)sender {
    [self performSegueWithIdentifier:@"teacher" sender:self];
    
}
@end
