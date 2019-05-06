//
//  NBLMessageBox.h
//  SXJianZhu
//
//  Created by HTJT-yangjh on 2019/1/3.
//  Copyright © 2019 HTJT-yangjh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, NBLMessageBoxStyle) {
    NBLMessageBoxStyle_Dark = 1,
    NBLMessageBoxStyle_Light = 2,
};

@interface NBLMessageBox : UIView

@property (nonatomic, assign) NBLMessageBoxStyle style;

+ (NBLMessageBox *)showLoading;
+ (NBLMessageBox *)showMessage:(NSString *)content;
+ (NBLMessageBox *)showLoadingWithMessage:(NSString *)content;

+ (void)close;
+ (void)closeWithDelay:(NSTimeInterval)delay;

@end
