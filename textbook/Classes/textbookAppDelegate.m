//
//  textbookAppDelegate.m
//  textbook
//
//  Created by Gus Coliadis on 10/24/10.
//  The Ohio State University
//

#import "textbookAppDelegate.h"

@implementation textbookAppDelegate

@synthesize window;
@synthesize webView;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	
	// Override point for customization after application launch.
    
    [window makeKeyAndVisible];
	//[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.reddit.com"]]];
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]isDirectory:NO]]];
	
	//diasble Scrolling "Bounce"
	for (id subview in webView.subviews) {
		if ([[subview class] isSubclassOfClass: [UIScrollView class]]) {
			((UIScrollView *)subview).bounces = NO;
		}
	}
	
    return YES;
}

//Funtction for when the Home Button on the menu bar is pressed, the Index page is loaded.
-(IBAction)goHome
{
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]isDirectory:NO]]];
}

-(IBAction)leftArrow
{
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]isDirectory:NO]]];
}

-(IBAction)rightArrow
{
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.cse.ohio-state.edu/~colburn/758/mathjax_html/transform2.html"]]];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
