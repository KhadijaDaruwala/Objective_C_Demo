//
//  ViewController.m
//  Objective C Demo
//
//  Created by Khadija Daruwala on 02/03/20.
//  Copyright © 2020 Khadija Daruwala. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelUsername;
@property (weak, nonatomic) IBOutlet UITextField *textfieldUsername;
@property (weak, nonatomic) IBOutlet UILabel *labelPassword;
@property (weak, nonatomic) IBOutlet UITextField *textfieldPassword;
@property (weak, nonatomic) IBOutlet UIButton *buttonLogin;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    self.title = @"Demo App";
}

- (IBAction)buttonLoginClicked:(id)sender {
    [_textfieldPassword resignFirstResponder];
    [_textfieldUsername resignFirstResponder];
   NSString *textWithoutSpaces1 = [self.textfieldPassword.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *textWithoutSpaces2 = [self.textfieldUsername.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ((textWithoutSpaces1.length != 0) && (textWithoutSpaces2.length != 0)){
     /* not empty - do something */
        printf("Valid");
        
        UIViewController *yourViewControllerName = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];

        [[self navigationController] pushViewController:yourViewControllerName  animated:YES];
        
    } else {
      /* empty - do something */
    printf("Not Valid");
        
        UIAlertController * alertvc = [UIAlertController alertControllerWithTitle: @ "Invalid"
                                                                          message: @ "Username or password cannot be empty" preferredStyle: UIAlertControllerStyleAlert
                                       ];
         UIAlertAction * action = [UIAlertAction actionWithTitle: @ "Okay"
                                   style: UIAlertActionStyleDefault handler: ^ (UIAlertAction * _Nonnull action) {
                                     NSLog(@ "Dismiss Tapped");
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
