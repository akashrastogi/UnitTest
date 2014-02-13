//
//  TDD_3Tests.m
//  TDD-3Tests
//
//  Created by Akash Rastogi on 12/02/14.
//  Copyright (c) 2014 Akash Rastogi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface TDD_3Tests : XCTestCase

@end
ViewController *viewController;
@implementation TDD_3Tests

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

- (void)testFor_One
{
    NSString *romanNumeral = @"I";
    NSNumber *desiredNumber = [NSNumber numberWithInt:1];
    NSNumber *actualNumber = [viewController romanToIntegerAndIntegertoRoman:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
    
    
    NSNumber *number = [NSNumber numberWithInt:1];
    NSString *desiredRoman = @"I";
    NSString *actualRoman = [viewController romanToIntegerAndIntegertoRoman:number];
    XCTAssertEqualObjects(desiredRoman, actualRoman, @"Integer to Roman test is failed");
}

- (void)testFor_Two
{
    NSString *romanNumeral = @"II";
    NSNumber *desiredNumber = [NSNumber numberWithInt:2];
    NSNumber *actualNumber = [viewController romanToIntegerAndIntegertoRoman:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
    
    
    NSNumber *number = [NSNumber numberWithInt:2];
    NSString *desiredRoman = @"II";
    NSString *actualRoman = [viewController romanToIntegerAndIntegertoRoman:number];
    XCTAssertEqualObjects(desiredRoman, actualRoman, @"Integer to Roman test is failed");
}

@end
