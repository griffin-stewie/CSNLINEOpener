//
//  CSLINEOpenerActivity.h
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

#import <UIKit/UIKit.h>

/**
 `CSLINEOpener` を使った `UIActivity` のサブクラス
 */

@interface CSLINEOpenerActivity : UIActivity

/**
 `UIActivity` のサブクラスを返す
 
 @param title UIActivityViewController に表示させたい名前を指定。nil の場合は "LINE" と表示される。
 
 @param icon UIActivityViewController に表示させたいアイコンを指定。
 
 @discussion 指定イニシャライザです
 
 @return UIActivity のインスタンスを返します
 */
- (id)initWithTitle:(NSString *)title icon:(UIImage *)icon;

@end
