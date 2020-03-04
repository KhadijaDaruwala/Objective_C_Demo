//
//  LoginViewController.m
//  Objective C Demo
//
//  Created by Khadija Daruwala on 02/03/20.
//  Copyright © 2020 Khadija Daruwala. All rights reserved.
//

#import "LoginViewController.h"
#import "OptionViewController.h"

@interface LoginViewController () <UITextFieldDelegate>


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    self.navigationItem.title = @"Demo App";
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    [self.view addGestureRecognizer:tapRecognizer];
}

- (IBAction)buttonLoginClicked:(id)sender {
    [_textfieldPassword resignFirstResponder];
    [_textfieldUsername resignFirstResponder];
    NSString *textWithoutSpaces1 = [self.textfieldPassword.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *textWithoutSpaces2 = [self.textfieldUsername.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ((textWithoutSpaces1.length != 0) && (textWithoutSpaces2.length != 0)){
        /* not empty - do something */
        
        UIViewController *yourViewControllerName = [self.storyboard instantiateViewControllerWithIdentifier:@ "OptionViewController"];
        
        [[self navigationController] pushViewController:yourViewControllerName  animated:YES];
        
    } else {
        /* empty - do something */
        
        UIAlertController * alertvc = [UIAlertController alertControllerWithTitle: @ "Invalid"
                                                                          message: @ "Username or password cannot be empty" preferredStyle: UIAlertControllerStyleAlert
                                       ];
        UIAlertAction * action = [UIAlertAction actionWithTitle: @ "Okay"
                                                          style: UIAlertActionStyleDefault handler: ^ (UIAlertAction * _Nonnull action) {
        }
                                  ];
        [alertvc addAction: action];
        [self presentViewController: alertvc animated: true completion: nil];
    }
}

- (void)setupUI{
    _labelTitle.textColor = [UIColor blueColor];
    _labelUsername.textColor = [UIColor grayColor];
    _labelPassword.textColor = [UIColor grayColor];
    _buttonLogin.backgroundColor = [UIColor blueColor];
    [_buttonLogin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _labelTitle.font = [UIFont systemFontOfSize:25];
    _labelUsername.font = [UIFont systemFontOfSize:14];
    _labelPassword.font = [UIFont systemFontOfSize:14];
    [_buttonLogin.titleLabel setFont:[UIFont systemFontOfSize:18 weight:bold]];
}

-(void) tapGesture: (UITapGestureRecognizer*)sender {
    [_textfieldUsername resignFirstResponder];
    [_textfieldPassword resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
