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
    [NBLShowMessage(@"提示了这个信息") setStyle:NBLMessageBoxStyle_Dark];
    NBLShowAlertMessage(@"标题", @"内容");
}
- (IBAction)clickShowLoading:(id)sender
{
    [[NBLShowLoadingWithMsg(@"登录中...") setStyle:NBLMessageBoxStyle_Dark] closeWithDelay:1];
    [NBLAlert showAlertOn:nil withTitle:@"标题" message:@"内容" andOKTitle:@"OK" callbackOK:^{
        NSLog(@"Click OK Button!");
    } cancelTitle:@"Cancel" callbackCancel:^{
        NSLog(@"ClickCancel Button!");
    }];
}

@end
