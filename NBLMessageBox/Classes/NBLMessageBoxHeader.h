//
//  NBLMessageBoxHeader.h
//  NBLMessageBox
//
//  Created by HTJT-yangjh on 2019/5/6.
//

#ifndef NBLMessageBoxHeader_h
#define NBLMessageBoxHeader_h

#import "NBLMessageBox.h"
#import "NBLAlert.h"

#define NBLShowLoadingWithMsg(msg) [NBLMessageBox showLoadingWithMessage:msg]
#define NBLShowLoading        [NBLMessageBox showLoading]
#define NBLCloseLoading       [NBLMessageBox close]

#define NBLShowMessage(msg) [[NBLMessageBox showMessage:msg] closeWithDelay:1]
#define NBLShowMessageAndDelay(msg, delay) [[NBLMessageBox showMessage:msg] closeWithDelay:delay]
#define NBLShowError(error)    NBLShowMessage(error.localizedDescription)

#define NBLShowAlertMessage(title, msg) [NBLAlert showAlertOn:nil withTitle:title andMessage:msg beforePresent:nil]


#endif /* NBLMessageBoxHeader_h */
