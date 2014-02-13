//
//  ViewController.m
//  TDD-3
//
//  Created by Akash Rastogi on 12/02/14.
//  Copyright (c) 2014 Akash Rastogi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)romanToArabic :(NSString *)input{
    NSNumber *output;
    {
        if ([input isEqualToString:@"I"]) {
            output = [NSNumber numberWithInt:1];
        }
        else if ([input isEqualToString:@"II"]) {
            output = [NSNumber numberWithInt:2];
        }
        else if ([input isEqualToString:@"III"]) {
            output = [NSNumber numberWithInt:3];
        }
        else if ([input isEqualToString:@"IV"]) {
            output = [NSNumber numberWithInt:4];
        }
        else if ([input isEqualToString:@"V"]) {
            output = [NSNumber numberWithInt:5];
        }
        else if ([input isEqualToString:@"VI"]) {
            output = [NSNumber numberWithInt:6];
        }
        else if ([input isEqualToString:@"VII"]) {
            output = [NSNumber numberWithInt:7];
        }
        else  output = [NSNumber numberWithInt:8];
    }
    return output;
}

@end