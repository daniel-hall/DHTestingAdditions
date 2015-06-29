//
//  XCTestCase+DHTestingAdditions.m
//  UITestingTesting
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
