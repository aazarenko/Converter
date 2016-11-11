//
//  SubViewController.h
//  Converter_CFT
//
//  Created by Student on 05.11.16.
//  Copyright © 2016 CFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrencyViewControllerDelegate.h"

@interface CurrencyViewController : UIViewController
    @property(weak) id<CurrencyViewControllerDelegate> delegate;
@end
