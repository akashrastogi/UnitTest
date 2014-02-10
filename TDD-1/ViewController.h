//
//  ViewController.h
//  TDD-1
//
//  Created by Akash Rastogi on 10/02/14.
//  Copyright (c) 2014 Akash Rastogi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtCelsius;
- (IBAction)btnConverterClicked:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnConverter;

-(float)celsiusToFarenhite :(float)celsius;
@end
