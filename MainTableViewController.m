//
//  MainTableViewController.m
//  practice
//
//  Created by David Manuntag on 2015-01-30.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "MainTableViewController.h"
#import "ViewController.h"

@interface MainTableViewController ()

@property (strong, nonatomic) NSMutableArray * personList;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _personList = [[NSMutableArray alloc]init];
    
    [self createPeople];
    
}


-(void)createPeople {
    
    Person * david = [[Person alloc]initWithName:@"David" withAge:23 withDOB:@"July, 29, 1991"];
    Person * maggie = [[Person alloc]initWithName:@"Maggie" withAge:23 withDOB:@"March 21, 1991"];
   
    [self.personList addObject:david];
    [self.personList addObject:maggie];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.personList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Person * person = [self.personList objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",person.name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",person.age];
    
    return cell;
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

        ViewController * viewController = segue.destinationViewController;
        
        Person * person = [self.personList objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        
        viewController.person = person;
        
    
}


@end
