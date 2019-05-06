//
//  NBLViewController.m
//  NBLMessageBox
//
//  Created by 杨建红 on 05/06/2019.
//  Copyright (c) 2019 杨建红. All rights reserved.
//

#import "NBLViewController.h"
#import <NBLMessageBox/NBLMessageBoxHeader.h>

@interface NBLViewController ()

@end

@implementation NBLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickShowMessage:(id)sender
{
    NBLMessageBox *messageBox = NBLShowSuccessMsg(@"提示了这个信息");
    messageBox.style = NBLMessageBoxStyle_Dark;
}
- (IBAction)clickShowLoading:(id)sender
{
    NBLMessageBox *messageBox = NBLShowTitleLoading(@"提示");
    messageBox.style = NBLMessageBoxStyle_Light;
    [NBLMessageBox closeWithDelay:1];
}

@end
