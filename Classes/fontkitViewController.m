//
//  fontkitViewController.m
//  fontkit
//
//  Created by Jon Gilkison on 5/27/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "fontkitViewController.h"

@implementation fontkitViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UITextField *field=[[UITextField alloc] initWithFrame:CGRectMake(0,0,300,150)];
	[field setFont:[UIFont fontWithName:@"anklepants" size:24]];
	[field setText:@"NICE ONE"];
	[self.view addSubview:field];
	
	UIWebView *webView=[[UIWebView alloc] initWithFrame:CGRectMake(0,150,768,768)];
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"font" ofType:@"html"] isDirectory:NO]]];
	[self.view addSubview:webView];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
