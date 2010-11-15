//
//  textbookAppDelegate.h
//  textbook
//
//  Created by Gus Coliadis on 10/24/10.
//  The Ohio State University
//

#import <UIKit/UIKit.h>

@interface textbookAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

-(IBAction)goHome;
-(IBAction)leftArrow;
-(IBAction)rightArrow;

@end

