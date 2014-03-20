//
//  CSLINEOpener.m
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

#import "CSLINEOpener.h"

/**
 
 line://msg/<CONTENT TYPE>/<CONTENT KEY>
 
 */

#define APP_STORE_URL @"https://itunes.apple.com/jp/app/line/id443904275?mt=8"
#define LINE_URL_SCHEME @"line://"
#define LINE_URL_MSG_PATH @"msg"
#define LINE_URL_CONTENT_TYPE_TEXT @"text"
#define LINE_URL_CONTENT_TYPE_IMAGE @"image"

@implementation CSLINEOpener

#pragma mark -
#pragma mark Public

+ (BOOL)canOpenLINE
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:LINE_URL_SCHEME]];
}

+ (BOOL)openLINEAppWithText:(NSString *)text
{
    NSString *encoded = [self percentEncodedStringWithString:text];
    NSURL *URL = [self URLForTextWithContentKey:encoded];
    if ([self canOpenLINE]) {
        return [[UIApplication sharedApplication] openURL:URL];
    }
    
    return NO;
}

+ (BOOL)openLINEAppWithImage:(UIImage *)image
{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    NSString *pasteboardName = pasteboard.name;
    [pasteboard setData:UIImagePNGRepresentation(image) forPasteboardType:@"public.png"];
    NSString *encoded = [self percentEncodedStringWithString:pasteboardName];
    NSURL *URL = [self URLForImageWithContentKey:encoded];
    if ([self canOpenLINE]) {
        return [[UIApplication sharedApplication] openURL:URL];
    }
    
    return NO;
}

+ (BOOL)openAppStore
{
    return [[UIApplication sharedApplication] openURL:[NSURL URLWithString:APP_STORE_URL]];
}

#pragma mark -
#pragma mark Internal

+ (NSString *)percentEncodedStringWithString:(NSString *)string
{
    NSString *escaped = (__bridge_transfer NSString*)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                                             (CFStringRef)string,
                                                                                             NULL,
                                                                                             CFSTR(":/?=,!$&'()*+;[]@#"),
                                                                                             CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    return escaped;
}

+ (NSString *)baseURLString
{
    NSString *base = [LINE_URL_SCHEME stringByAppendingString:LINE_URL_MSG_PATH];
    return base;
}

+ (NSURL *)URLForTextWithContentKey:(NSString *)contentKey
{
    NSString *str = [[self baseURLString] stringByAppendingFormat:@"/%@/%@", LINE_URL_CONTENT_TYPE_TEXT, contentKey];
    return [NSURL URLWithString:str];
}

+ (NSURL *)URLForImageWithContentKey:(NSString *)contentKey
{
    NSString *str = [[self baseURLString] stringByAppendingFormat:@"/%@/%@", LINE_URL_CONTENT_TYPE_IMAGE, contentKey];
    return [NSURL URLWithString:str];
}

@end
