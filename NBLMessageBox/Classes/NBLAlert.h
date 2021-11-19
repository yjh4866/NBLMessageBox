//
//  NBLAlert.h
//  NBLMessageBox
//
//  Created by GangX-yangjh on 2021/11/19.
//

#import <Foundation/Foundation.h>

@interface NBLAlert : NSObject

+ (void)showAlertOn:(UIViewController *)parentViewController
          withTitle:(NSString *)title andMessage:(NSString *)message
      beforePresent:(void(^)(UIAlertController *))beforePresent;

+ (void)showAlertOn:(UIViewController *)parentViewController
          withTitle:(NSString *)title message:(NSString *)message
         andOKTitle:(NSString *)oktitle callbackOK:(void(^)(void))callbackOK
        cancelTitle:(NSString *)canceltitle callbackCancel:(void(^)(void))callbackCancel;

@end
