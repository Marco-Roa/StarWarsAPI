//
//  ViewController.m
//  StarWarsAPI
//
//  Created by Marco Antonio Roa De La Cruz on 11/8/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "ViewController.h"
#import "SWCell.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray *people;

@end

int indexPerson = 0;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _people = [[NSMutableArray alloc] init];
    [self getPeople];
    //[self getPerson];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//********************************************************************************************
#pragma mark                            Data methods
//********************************************************************************************
- (void)getPeople{
    
    NSLog(@"PMK - getPeople");
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [WebServices getPeople:^(NSMutableArray<SWObject> *people) {
        
        if(people){
            [_people removeAllObjects];
            [_people addObjectsFromArray:people];
            
            SWObject *person = [people objectAtIndex:indexPerson];
            NSString *name = person.name;
            
            NSLog(@"print name : %@", name);
            //self.lblName.text = name;
            //self.lblName.adjustsFontSizeToFitWidth = YES;
            //indexPerson++;
            
            self.tableView.reloadData;
            
        }
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    }];
}
- (void)getPerson{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [WebServices getPerson:@"1" completion:^(NSMutableArray<SWObject> *people) {
        
        if(people){
            [_people removeAllObjects];
            [_people addObjectsFromArray:people];
            
        }
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    }];
}

//********************************************************************************************
#pragma mark                            Action methods
//********************************************************************************************


- (IBAction)btnRefreshPressed:(id)sender
{
    [self getPeople];
}



#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UIView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UIView *)tableView numberOfRowsInSection:(NSInteger)section {
   // [self getPeople];
    
    NSLog(@"PMK - people.count table view: %li", _people.count);
    return _people.count;
    //return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //[self getPeople];
    
    SWCell *cell = (SWCell *)[tableView dequeueReusableCellWithIdentifier:@"SWCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"SWCell" bundle:nil] forCellReuseIdentifier:@"SWCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"SWCell"];
    }
    
    //VersusCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VersusCell" forIndexPath:indexPath];
    
    //cell.team1Label.text = @"test";
    
    SWObject *person = [_people objectAtIndex:indexPath.row];
    NSString *name = person.name;

    NSLog(@"PMK - name : %@", name);
    
    cell.lblName.text = name;
    
    return cell;
}
@end
