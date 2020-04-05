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

+ (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message
             beforePresent:(void(^)(UIAlertController *))beforePresent;

@end
