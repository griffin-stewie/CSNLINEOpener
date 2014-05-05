//
//  CSNLineOpener.h
//
//  Created by griffin_stewie on 2013/02/01.
//  Copyright (c) 2013 griffin_stewie
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


#import <Foundation/Foundation.h>

/**
 open LINE.app with text OR image. "LINE it!" function.

 */

@interface CSNLINEOpener : NSObject

/**
 Returns whether an app can open LINE.app if exists.
 
 @return NO if no app is available that will accept 'line://' scheme; otherwise, returns YES.
 */
+ (BOOL)canOpenLINE;

/**
 open LINE.app with text.
 
 @param text text you want to send.

 @return NO if no app is available that will accept it; otherwise, returns YES.
 
 */
+ (BOOL)openLINEAppWithText:(NSString *)text;

/**
 open LINE.app with image.
 
 @param image image you want to send.
 
 @return NO if no app is available that will accept it; otherwise, returns YES.
 */
+ (BOOL)openLINEAppWithImage:(UIImage *)image;

/**
 open LINE.app's page on AppStore.

 @return NO if no app is available that will accept the URL; otherwise, returns YES.
 */
+ (BOOL)openAppStore;

@end
