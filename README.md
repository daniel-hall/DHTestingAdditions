# DHTestingAdditions
Helpful additions for XCTest, starting with a method to wait until an XCUIElement appears before continuing.

## Installation
Download and copy the DHTestingAdditions folder into your project and add it to your UI Testing target.

## Example Usage

```objective-c
- (void)testTapGoButton {  
	XCUIApplication *app = [[XCUIApplication alloc] init];
	XCUIElement *goButton = app.buttons[@"Go"];
	[self waitUntilElementExists:goButton withTimeout:5.0f]; //<-- execution will not continue past this line until the element exists, or the timeout expires (which will cause the test to fail)

	[goButton tap]; //<-- This line will only be reached and executed if the -waitUntilElementExists:withTimeout: method on the line above succeeds

	XCUIElement *nextScreenLabel = app.staticTexts[@"You have arrived on the next screen!"];
	XCTAssertEqual(nextScreenLabel.exists, YES);
}
```
To see this example in an actual running test, download the entire repository and execute the DHTestingAdditionsExample project UI Test target.
