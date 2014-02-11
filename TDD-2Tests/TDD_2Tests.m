//
//  TDD_2Tests.m
//  TDD-2Tests
//
//  Created by Akash Rastogi on 11/02/14.
//  Copyright (c) 2014 Akash Rastogi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface TDD_2Tests : XCTestCase

@end
ViewController *viewController;
@implementation TDD_2Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    viewController = [[ViewController alloc]init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testWithZero
{
    int celsius = 0;
    int desiredFarenheie = 32;
    
    int actualFarenheie = [viewController celsiusToFarenhite:celsius];
    
    XCTAssertEqual(desiredFarenheie, actualFarenheie, @"Test is failed.");
}

@end
