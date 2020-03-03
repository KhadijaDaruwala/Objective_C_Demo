//
//  ViewController2.m
//  Objective C Demo
//
//  Created by Khadija Daruwala on 03/03/20.
//  Copyright © 2020 Khadija Daruwala. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2
NSArray *myColors;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Pick your Rainbow color";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.separatorColor = [UIColor grayColor];
    self.tableView.backgroundColor = [UIColor blackColor];
    myColors = [NSArray arrayWithObjects: @"Violet", @"Indigo", @"Blue", @"Green", @"Yellow",@"Orange", @"Red", nil];
    
}


//NSArray *colors = @[@"Red", @"Yellow", @"Orange", @"Green", @"Blue", @"Violet"];

//MARK: Tableview delegate and data source methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return myColors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = myColors[indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch(indexPath.row){
        case 0  :
            tableView.backgroundColor = [UIColor colorWithRed:134/255.0 green:1/255.0 blue:175/255.0 alpha:1];
            break;
        case 1  :
            tableView.backgroundColor = [UIColor colorWithRed:75/255.0 green:0/255.0 blue:130/255.0 alpha:1];
            break;
        case 2  :
            tableView.backgroundColor = [UIColor blueColor];
            break;
        case 3  :
            tableView.backgroundColor = [UIColor greenColor];
            break;
            
        case 4  :
            tableView.backgroundColor = [UIColor yellowColor];
            break;
        case 5  :
            tableView.backgroundColor = [UIColor orangeColor];
            break;
        case 6  :
            tableView.backgroundColor = [UIColor redColor];
            break;
            
        default : /* Optional */
             tableView.backgroundColor = [UIColor whiteColor];
    }
}
@end
