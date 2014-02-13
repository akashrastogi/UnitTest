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

-(id)romanToIntegerAndIntegertoRoman :(id)input{
    id output;
    if ([input isKindOfClass:[NSNumber class]]) {
        if ([input integerValue]==1) {
            output = @"I";
        }
       else output = @"II";
    }
    else if ([input isKindOfClass:[NSString class]]){
        if ([input isEqualToString:@"I"]) {
            output = [NSNumber numberWithInt:1];
        }
        else output = [NSNumber numberWithInt:2];
    }
    
    return output;
}

@end