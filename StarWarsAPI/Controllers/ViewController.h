//
//  ViewController.h
//  StarWarsAPI
//
//  Created by Marco Antonio Roa De La Cruz on 11/8/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebServices.h"
#import "Constants.h"

@interface ViewController : UIViewController
- (IBAction)btnRefreshPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UILabel *heightLabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *massLabel;
@property (strong, nonatomic) IBOutlet UILabel *hairLabel;
@property (strong, nonatomic) IBOutlet UILabel *skinLabel;
@property (strong, nonatomic) IBOutlet UILabel *eyeLabel;
@property (strong, nonatomic) IBOutlet UILabel *birthLabel;
@property (strong, nonatomic) IBOutlet UILabel *worldLabel;
@property (strong, nonatomic) IBOutlet UITextView *vehicleTextView;
@property (strong, nonatomic) IBOutlet UITextView *starshipsTextView;
@property (strong, nonatomic) IBOutlet UITextView *filmsTextView;
@property (strong, nonatomic) IBOutlet UITextView *speciesTextView;



@end

