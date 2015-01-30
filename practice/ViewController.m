//
//  ViewController.m
//  practice
//
//  Created by David Manuntag on 2015-01-30.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *ageLabel;
@property (strong, nonatomic) IBOutlet UILabel *dobLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        self.nameLabel.text = self.person.name;
        self.ageLabel.text = [NSString stringWithFormat:@"Age:%d",self.person.age];
        self.dobLabel.text = [NSString stringWithFormat:@"Date of Birth:%@",self.person.dateOfBirth];

}



@end
