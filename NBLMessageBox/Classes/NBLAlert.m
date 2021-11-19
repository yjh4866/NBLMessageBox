//
//  NBLAlert.m
//  NBLMessageBox
//
//  Created by GangX-yangjh on 2021/11/19.
//

#import "NBLAlert.h"

@implementation NBLAlert

+ (void)showAlertOn:(UIViewController *)parentViewController
          withTitle:(NSString *)title andMessage:(NSString *)message
      beforePresent:(void(^)(UIAlertController *))beforePresent
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (beforePresent) {
        beforePresent(alertController);
    } else {
        [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
    }
    if (parentViewController == nil) {
        parentViewController = [NBLAlert frontWindow].rootViewController;
    }
    [parentViewController presentViewController:alertController animated:YES completion:nil];
}

+ (void)showAlertOn:(UIViewController *)parentViewController
          withTitle:(NSString *)title message:(NSString *)message
         andOKTitle:(NSString *)oktitle callbackOK:(void(^)(void))callbackOK
        cancelTitle:(NSString *)canceltitle callbackCancel:(void(^)(void))callbackCancel
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:oktitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (callbackOK) {
            callbackOK();
        }
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:canceltitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (callbackCancel) {
            callbackCancel();
        }
    }]];
    if (parentViewController == nil) {
        parentViewController = [NBLAlert frontWindow].rootViewController;
    }
    [parentViewController presentViewController:alertController animated:YES completion:nil];
}

+ (UIWindow *)frontWindow
{
    NSEnumerator *frontToBackWindows = [UIApplication.sharedApplication.windows reverseObjectEnumerator];
    for (UIWindow *window in frontToBackWindows) {
        BOOL windowOnMainScreen = window.screen == UIScreen.mainScreen;
        BOOL windowIsVisible = !window.hidden && window.alpha > 0;
        BOOL windowKeyWindow = window.isKeyWindow;
        
        if(windowOnMainScreen && windowIsVisible && windowKeyWindow) {
            return window;
        }
    }
    return nil;
}

@end
