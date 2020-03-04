//
//  OptionViewController.m
//  Objective C Demo
//
//  Created by Khadija Daruwala on 04/03/20.
//  Copyright © 2020 Khadija Daruwala. All rights reserved.
//

#import "OptionViewController.h"
#import "RainbowViewController.h"
#import "CoursesViewController.h"

@interface OptionViewController ()

@end

@implementation OptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"World of Options";
    [self setUpUI];
}

-(void)setUpUI{
    _buttonColors.backgroundColor = [UIColor whiteColor];
    _buttonColors.layer.borderColor = [UIColor redColor].CGColor;
    _buttonColors.layer.borderWidth = 1;
    [_buttonColors setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    _buttonColors.titleLabel.font = [UIFont systemFontOfSize:15 weight:normal];

    _buttonCourses.backgroundColor = [UIColor whiteColor];
    _buttonCourses.layer.borderColor = [UIColor redColor].CGColor;
    [_buttonCourses setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _buttonCourses.titleLabel.font = [UIFont systemFontOfSize:15 weight:normal];
    _buttonCourses.layer.borderWidth = 1;

    _buttonLogout.backgroundColor = [UIColor blueColor];
    [_buttonLogout setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _buttonLogout.titleLabel.font = [UIFont systemFontOfSize:15 weight:bold];
}

- (IBAction)buttonColorsClicked:(id)sender {
    UIViewController *yourViewControllerName = [self.storyboard instantiateViewControllerWithIdentifier:@ "RainbowViewController"];
    
    [[self navigationController] pushViewController:yourViewControllerName  animated:YES];
}

- (IBAction)buttonCoursesClicked:(id)sender {
    UIViewController *yourViewControllerName = [self.storyboard instantiateViewControllerWithIdentifier:@ "CoursesViewController"];
      [[self navigationController] pushViewController:yourViewControllerName  animated:YES];
}

- (IBAction)buttonLogoutClicked:(id)sender {
}


@end
