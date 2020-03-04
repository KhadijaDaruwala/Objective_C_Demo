//
//  CoursesViewController.m
//  Objective C Demo
//
//  Created by Khadija Daruwala on 04/03/20.
//  Copyright © 2020 Khadija Daruwala. All rights reserved.
//

#import "CoursesViewController.h"
#import "CourseModel.h"

@interface CoursesViewController ()
@property(strong, nonatomic) NSMutableArray<CourseModel *> *courses;
@end

@implementation CoursesViewController

NSString *cellId = @"cellId";


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Courses";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellId];
    [self setupCourses];
}

-(void)setupCourses{
    self.courses = NSMutableArray.new;
    CourseModel *courseObj = CourseModel.new;
    courseObj.name = @"Instagram Firebase";
    courseObj.noOfLessons = @(49);
    [self.courses addObject:courseObj];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.courses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellId forIndexPath:indexPath];
    
    CourseModel *course = self.courses[indexPath.row];
    cell.textLabel.text = course.name;
    return cell;
}

@end
