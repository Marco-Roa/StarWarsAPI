//
//  DetailsViewController.m
//  StarWarsAPI
//
//  Created by Marco Antonio Roa De La Cruz on 11/13/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //load the object passed as parameter and populate the label information
    
    self.heightLabel.text = self.detailObject.height;
    self.nameLabel.text = self.detailObject.name;
    self.massLabel.text = self.detailObject.mass;
    self.hairLabel.text = self.detailObject.hair_color;
    self.skinLabel.text = self.detailObject.skin_color;
    self.eyeLabel.text = self.detailObject.eye_color;
    self.birthLabel.text = self.detailObject.birth_year;
    self.worldLabel.text = self.detailObject.homeworld;
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
