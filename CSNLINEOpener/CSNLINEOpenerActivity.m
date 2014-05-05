//
//  CSNLineOpenerActivity.m
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

#import "CSNLINEOpenerActivity.h"
#import "CSNLINEOpener.h"

@interface CSNLINEOpenerActivity ( )
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIImage *icon;
@property (nonatomic, strong) NSArray *activityItems;
@end


@implementation CSNLINEOpenerActivity

- (instancetype)initWithTitle:(NSString *)title icon:(UIImage *)icon
{
    self = [super init];
    if (self) {
        self.title = title;
        self.icon = icon;
    }
    return self;
}

#pragma mark -
#pragma mark Override

- (NSString *)activityType
{
    return nil;
}

- (NSString *)activityTitle
{
    if (self.title == nil) {
        return @"LINE";
    }
    return self.title;
}

- (UIImage *)activityImage
{
    return self.icon;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    for (id item in activityItems) {
        if ([item isKindOfClass:[NSString class]] || [item isKindOfClass:[UIImage class]]) {
            return YES;
        }
    }
    
    return NO;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    self.activityItems = activityItems;
}

- (void)performActivity
{
    if (![CSNLINEOpener canOpenLINE]) {
        [self activityDidFinish:NO];
        return;
    }
    
    for (id item in self.activityItems) {
        if ([item isKindOfClass:[NSString class]]) {
            BOOL result = [CSNLINEOpener openLINEAppWithText:(NSString *)item];
            [self activityDidFinish:result];
            break;
        } else if ([item isKindOfClass:[UIImage class]]) {
            BOOL result = [CSNLINEOpener openLINEAppWithImage:(UIImage *)item];
            [self activityDidFinish:result];
            break;
        }
    }
}
@end
