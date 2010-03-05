//
//  ImageAppDelegate.h
//  Image
//
//  Created by Steve Baker on 3/4/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImageViewController;

@interface ImageAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ImageViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ImageViewController *viewController;

@end

