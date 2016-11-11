//
//  SubViewController.m
//  Converter_CFT
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 CFT. All rights reserved.
//

#import "CurrencyViewController.h"
#import "CurrencyViewControllerDelegate.h"

@interface CurrencyViewController ()

@end

@implementation CurrencyViewController
{
    IBOutlet UITableView *TableForChoose;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Выбор валюты";
    [self configureNavigationItem];
    // Do any additional setup after loading the view from its nib.
}

-(void)configureNavigationItem
{
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"готово"
                                                           style:UIBarButtonItemStyleDone
                                                           target:self
                                                           action:@selector(doneTapped)];
    self.navigationItem.rightBarButtonItem = doneButton;
}

-(void)doneTapped{
    [self.delegate closeChooseCurrency];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
