//
//  ViewController.m
//  TDD-1
//
//  Created by Akash Rastogi on 10/02/14.
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

- (IBAction)btnConverterClicked:(UIButton *)sender {
    float celsius = [_txtCelsius.text floatValue];
    float farenhite = [self celsiusToFarenhite:celsius];
    [[[UIAlertView alloc]initWithTitle:@"conversion result" message:[NSString stringWithFormat:@"%f celsius = %f farenhite", celsius, farenhite] delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil]show];
}
-(float)celsiusToFarenhite :(float)celsius{
    float farenhite = (1.8 * celsius) + 32;
    return farenhite;
}
@end
