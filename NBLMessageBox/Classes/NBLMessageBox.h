//
//  NBLMessageBox.h
//  SXJianZhu
//
//  Created by HTJT-yangjh on 2019/1/3.
//  Copyright © 2019 HTJT-yangjh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NBLMessageBox : UIView

+ (void)showLoading;
+ (void)showMessage:(NSString *)content;
+ (void)showLoadingWithMessage:(NSString *)content;

+ (void)close;
+ (void)closeWithDelay:(NSTimeInterval)delay;

@end
