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
    
    [self romanToArabic:@"CCLD"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)romanToArabic :(NSString *)input{
    NSDictionary *dictSymbols = @{
                                  @"M": [NSNumber numberWithInt:1000],
                                  @"D": [NSNumber numberWithInt:500],
                                  @"C": [NSNumber numberWithInt:100],
                                  @"L": [NSNumber numberWithInt:50],
                                  @"X": [NSNumber numberWithInt:10],
                                  @"V": [NSNumber numberWithInt:5],
                                  @"I": [NSNumber numberWithInt:1]
                                  };
    
    int totalValue = 0; // hold the total value of the roman numeral
    int previousValue = 0; // Set the value of the previous pointer to some MIN value.
    int currentValue =0; // This will hold the value of the current Roman Numeral character.
    
    for (int i=[input length]; i>1; i--) {
        NSString *current = [input substringWithRange:NSMakeRange(i-1, 1)];
        currentValue = [[dictSymbols valueForKey:current]integerValue];
        
        totalValue = totalValue + currentValue;

        NSString *previous = [input substringWithRange:NSMakeRange(i-1-1, 1)];
        previousValue = [[dictSymbols valueForKey:previous]integerValue];
        
        //if (currentValue < previousValue)
            totalValue = totalValue - previousValue;
        //else
          //  totalValue = totalValue + currentValue;
        
    }
    NSNumber *output = [NSNumber numberWithInteger:totalValue];
    return output;
}

@end