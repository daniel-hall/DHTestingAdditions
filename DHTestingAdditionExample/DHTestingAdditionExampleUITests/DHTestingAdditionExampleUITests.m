//
//  DHTestingAdditionExampleUITests.m
//  DHTestingAdditionExampleUITests
//
//  Created by Daniel Hall on 6/27/15.
//  Copyright © 2015 Daniel Hall. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.


#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "XCTestCase+DHTestingAdditions.h"

@interface DHTestingAdditionExampleUITests : XCTestCase

@end

@implementation DHTestingAdditionExampleUITests

- (void)setUp {
    [super setUp];
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTapGoButton {    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *goButton = app.buttons[@"Go"];
    [self waitUntilElementExists:goButton withTimeout:5.0f]; //<-- execution will not continue past this line until the element exists, or the timeout expires (which will cause the test to fail)

    [goButton tap];
    
    XCUIElement *nextScreenLabel = app.staticTexts[@"You have arrived on the next screen!"];
    XCTAssertEqual(nextScreenLabel.exists, YES);
}

@end
