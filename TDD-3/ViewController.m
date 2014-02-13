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
    if (input) {
        NSError *error;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$"
                                                                               options:NSRegularExpressionCaseInsensitive error:&error];
        
        NSUInteger validationResult = [regex numberOfMatchesInString:input options:0 range:NSMakeRange(0, [input length])];
        if (validationResult ==0) {
            output = [NSNumber numberWithInteger:-1];
        }
        
        else{
            
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
            
            for (int i=[input length]; i>=1; i--) {
                NSString *current = [[input uppercaseString] substringWithRange:NSMakeRange(i-1, 1)];
                if (![[dictSymbols allKeys]containsObject:current]) {/// invalid character found, set the value to -1 and break the loop.
                    totalValue = -1;
                    break;
                }
                
                currentValue = [[dictSymbols valueForKey:current]integerValue];
                
                if (currentValue < previousValue)
                    totalValue = totalValue - currentValue;
                else
                    totalValue = totalValue + currentValue;
                
                previousValue = currentValue  ;
            }
            output = [NSNumber numberWithInteger:totalValue];
        }
    }
    else output = [NSNumber numberWithInteger:-1];
    
    return output;
}

@end