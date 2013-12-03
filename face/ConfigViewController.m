//
//  ConfigViewController.m
//  hudini
//
//  Created by Francesc on 03/12/13.
//  Copyright (c) 2013 Richard Robinson. All rights reserved.
//

#import "ConfigViewController.h"
#import "AppDelegate.h"

@interface ConfigViewController ()

@end

@implementation ConfigViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    
    if (FBSession.activeSession.isOpen) {
        [[FBRequest requestForMe] startWithCompletionHandler:
         ^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
             if (!error) {
                 //self.userNameLabel.text = user.name;
                 //self.userProfileImage.profileID = [user objectForKey:@"id"];
                 NSLog( @"Nombre: %@" ,  user.name );
                 NSLog( @"Id: %@" ,  [user objectForKey:@"id"] );
                 
                 _nombre.text = user.name;
                 _identificador.text = [user objectForKey:@"id"];
                 
                 
                 
             }
         }];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authButtonAction:(id)sender {
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate closeSession];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
