//
//  XCTestCase+DHTestingAdditions.h
//  UITestingTesting
//
//  Created by Daniel Hall on 6/27/15.
//  Copyright © 2015 Daniel Hall. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCTestCase (DHTestingAdditions)

-(void)waitUntilElementExists:(XCUIElement *)element withTimeout:(NSTimeInterval)timeout;

@end
