//
//  ViewController.m
//  TDD-2
//
//  Created by Akash Rastogi on 11/02/14.
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

-(int)celsiusToFarenhite :(int)celsius{
    if (celsius ==0) {
        return 32;
    }
    return 33;
}
@end
