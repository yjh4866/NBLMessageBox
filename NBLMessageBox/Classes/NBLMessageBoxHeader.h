//
//  NBLMessageBoxHeader.h
//  NBLMessageBox
//
//  Created by HTJT-yangjh on 2019/5/6.
//

#ifndef NBLMessageBoxHeader_h
#define NBLMessageBoxHeader_h

#import "NBLMessageBox.h"


#define NBLShowLoadingWithMsg(msg) [NBLMessageBox showLoadingWithMessage:msg]
#define NBLShowLoading        [NBLMessageBox showLoading]
#define NBLCloseLoading       [NBLMessageBox close]

#define NBLShowSuccessMsg(msg) [[NBLMessageBox showMessage:msg] closeWithDelay:1]
#define NBLShowErrorMsg(msg)   [[NBLMessageBox showMessage:msg] closeWithDelay:1]
#define NBLShowError(error)    NBLShowErrorMsg(error.localizedDescription)


#endif /* NBLMessageBoxHeader_h */
