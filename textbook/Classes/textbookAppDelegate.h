//
//  textbookAppDelegate.h
//  textbook
//
//  Created by gcoliadi on 10/24/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface textbookAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

-(IBAction)goHome;

@end

