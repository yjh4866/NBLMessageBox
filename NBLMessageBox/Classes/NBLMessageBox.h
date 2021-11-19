//
//  NBLMessageBox.h
//  SXJianZhu
//
//  Created by HTJT-yangjh on 2019/1/3.
//  Copyright © 2019 HTJT-yangjh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, NBLMessageBoxStyle) {
    NBLMessageBoxStyle_Dark = 1,
    NBLMessageBoxStyle_Light = 2,
};

@interface NBLMessageBox : UIView

@property (weak, nonatomic) IBOutlet UILabel *labelMessage;

+ (NBLMessageBox *)showLoading;
+ (NBLMessageBox *)showLoadingOn:(UIView *)superView;
+ (NBLMessageBox *)showMessage:(NSString *)content;
+ (NBLMessageBox *)showMessage:(NSString *)content on:(UIView *)superView;
+ (NBLMessageBox *)showLoadingWithMessage:(NSString *)content;
+ (NBLMessageBox *)showLoadingWithMessage:(NSString *)content on:(UIView *)superView;

+ (void)close;
+ (void)closeWithDelay:(NSTimeInterval)delay;

- (NBLMessageBox *)setStyle:(NBLMessageBoxStyle)style;
- (NBLMessageBox *)closeWithDelay:(NSTimeInterval)delay;

@end
