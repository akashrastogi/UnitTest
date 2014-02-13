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
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Two
{
    NSString *romanNumeral = @"II";
    NSNumber *desiredNumber = [NSNumber numberWithInt:2];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Three
{
    NSString *romanNumeral = @"III";
    NSNumber *desiredNumber = [NSNumber numberWithInt:3];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Four
{
    NSString *romanNumeral = @"IV";
    NSNumber *desiredNumber = [NSNumber numberWithInt:4];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Five
{
    NSString *romanNumeral = @"V";
    NSNumber *desiredNumber = [NSNumber numberWithInt:5];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Six
{
    NSString *romanNumeral = @"VI";
    NSNumber *desiredNumber = [NSNumber numberWithInt:6];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Seven
{
    NSString *romanNumeral = @"VII";
    NSNumber *desiredNumber = [NSNumber numberWithInt:7];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}

- (void)testFor_Eight
{
    NSString *romanNumeral = @"VIII";
    NSNumber *desiredNumber = [NSNumber numberWithInt:8];
    NSNumber *actualNumber = [viewController romanToArabic:romanNumeral];
    XCTAssertEqual(desiredNumber, actualNumber, @"Roman to integer test is failed.");
}


@end
