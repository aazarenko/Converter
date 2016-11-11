//
//  ViewController.m
//  Converter_CFT
//
//  Created by Student on 29.10.16.
//  Copyright © 2016 CFT. All rights reserved.
//

#import "MainViewController.h"
#import "Converter.h"
#import "CurrencyViewController.h"

@interface MainViewController ()
<UITextFieldDelegate>
@end

@implementation MainViewController
{
    IBOutlet UITextField *InputValue;
    IBOutlet UITextField *OutputValue;
}

-(IBAction)tapOnButton{
    
    [self convertCurrency:InputValue.text];
}

-(void)closeChooseCurrency{
    [self.navigationController popViewControllerAnimated: YES];
}

-(IBAction)convertCurrency:(NSString*)string{
    float inValue = [string floatValue];
    float outValue = [Converter convertCurrency:inValue];
    NSString *outString = [NSString stringWithFormat:@"%.2f", outValue ];
    OutputValue.text = outString;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString *result;
    result = textField.text;
    result = [result stringByReplacingCharactersInRange:range withString:string];
    [self convertCurrency:result];
    
    return YES;
}


-(IBAction)chooseCurrency{

    CurrencyViewController *CurrencyVC;
    CurrencyVC =[[CurrencyViewController alloc] initWithNibName:nil bundle:nil];
    
    CurrencyVC.delegate = self;
    
    [self.navigationController pushViewController:CurrencyVC animated: YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Обмен валюты";
    InputValue.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
