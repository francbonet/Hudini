//
//  ConfigViewController.h
//  hudini
//
//  Created by Francesc on 03/12/13.
//  Copyright (c) 2013 Richard Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfigViewController : UIViewController

- (IBAction)authButtonAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *nombre;
@property (weak, nonatomic) IBOutlet UITextField *identificador;

@end
