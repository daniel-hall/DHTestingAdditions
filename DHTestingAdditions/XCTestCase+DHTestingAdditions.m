//
//  XCTestCase+DHTestingAdditions.m
//  UITestingTesting
//
//  Created by Daniel Hall on 6/27/15.
//  Copyright © 2015 Daniel Hall. All rights reserved.
//

#import "XCTestCase+DHTestingAdditions.h"

@implementation XCTestCase (DHTestingAdditions)

-(void)waitUntilElementExists:(XCUIElement *)element withTimeout:(NSTimeInterval)timeout {
    NSTimeInterval startTime = [NSDate timeIntervalSinceReferenceDate];
    while (!element.exists) {
        if ([NSDate timeIntervalSinceReferenceDate] - startTime > timeout) {
            XCTFail(@"Timed out waiting for element to exist");
            return;
        }
        
        CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.1, false);
    }
}

@end
