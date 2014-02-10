//
//  TDD_1Tests.m
//  TDD-1Tests
//
//  Created by Akash Rastogi on 10/02/14.
//  Copyright (c) 2014 Akash Rastogi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface TDD_1Tests : XCTestCase

@end

@implementation TDD_1Tests
ViewController *viewController;
- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    viewController = [[ViewController alloc]init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    viewController = nil;
    [super tearDown];
}

- (void)testWithZero
{
    [viewController celsiusToFarenhite:0];
}

- (void)testWithOne
{
    [viewController celsiusToFarenhite:1];
}

@end
