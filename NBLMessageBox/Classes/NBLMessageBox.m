//
//  NBLMessageBox.m
//  SXJianZhu
//
//  Created by HTJT-yangjh on 2019/1/3.
//  Copyright © 2019 HTJT-yangjh. All rights reserved.
//

#import "NBLMessageBox.h"

static NBLMessageBox *g_messageBox = nil;

@interface NBLMessageBox ()
@property (weak, nonatomic) IBOutlet UIView *comboBoxView;
@property (weak, nonatomic) IBOutlet UIView *loadingBoxView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;
@property (weak, nonatomic) IBOutlet UILabel *labelMessage;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintMessageTop;
@end

@implementation NBLMessageBox

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setStyle:NBLMessageBoxStyle_Dark];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    // 圆角矩形框
    self.comboBoxView.layer.cornerRadius = 5.0f;
    self.loadingBoxView.layer.cornerRadius = 5.0f;
}


#pragma mark - Public

+ (NBLMessageBox *)showLoading
{
    NBLMessageBox *messageBox = [NBLMessageBox showMessageBox];
    [messageBox.comboBoxView removeFromSuperview];
    return messageBox;
}
+ (NBLMessageBox *)showMessage:(NSString *)content
{
    NBLMessageBox *messageBox = [NBLMessageBox showMessageBox];
    [messageBox.loadingBoxView removeFromSuperview];
    // 显示文本
    messageBox.labelMessage.text = content;
    // 移除加载指示视图
    [messageBox.activityView removeFromSuperview];
    messageBox.constraintMessageTop.constant = 13.0f;
    return messageBox;
}
+ (NBLMessageBox *)showLoadingWithMessage:(NSString *)content
{
    NBLMessageBox *messageBox = [NBLMessageBox showMessageBox];
    [messageBox.loadingBoxView removeFromSuperview];
    // 显示文本
    messageBox.labelMessage.text = content;
    return messageBox;
}

+ (void)close
{
    [g_messageBox removeFromSuperview];
    g_messageBox = nil;
}
+ (void)closeWithDelay:(NSTimeInterval)delay
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [g_messageBox removeFromSuperview];
        g_messageBox = nil;
    });
}

- (NBLMessageBox *)setStyle:(NBLMessageBoxStyle)style
{
    // 暗色风格
    if (style == NBLMessageBoxStyle_Dark) {
        self.comboBoxView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6f];
        self.loadingBoxView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6f];
        self.activityView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
        self.labelMessage.textColor = [UIColor whiteColor];
    }
    // 亮色风格
    else if (style == NBLMessageBoxStyle_Light) {
        self.comboBoxView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.6f];
        self.loadingBoxView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.6f];
        self.activityView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        self.labelMessage.textColor = [UIColor blackColor];
    }
    return self;
}
- (NBLMessageBox *)closeWithDelay:(NSTimeInterval)delay
{
    [NBLMessageBox closeWithDelay:delay];
    return self;
}


#pragma mark - Private

+ (NBLMessageBox *)showMessageBox
{
    if (g_messageBox) {
        [g_messageBox removeFromSuperview];
    }
    // 加载对话框
    NSBundle *bundle = [NSBundle bundleForClass:NBLMessageBox.class];
    g_messageBox = [bundle loadNibNamed:@"NBLMessageBox.bundle/NBLMessageBox" owner:nil options:nil][0];
    [[NBLMessageBox frontWindow] addSubview:g_messageBox];
    g_messageBox.frame = CGRectMake(0, 0, g_messageBox.superview.frame.size.width, g_messageBox.superview.frame.size.height);
    //
    return g_messageBox;
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
