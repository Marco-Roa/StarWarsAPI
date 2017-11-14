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

@property (strong, nonatomic) IBOutlet UIButton *btnRefresh;
@property (strong, nonatomic) IBOutlet UILabel *lblName;

@end

