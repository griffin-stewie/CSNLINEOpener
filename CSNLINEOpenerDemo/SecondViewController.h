//
//  SecondViewController.h
//  CSNLineOpenerDemo
//
//  Created by griffin_stewie on 2013/02/11.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)photoButtonTapped:(id)sender;
- (IBAction)sendImageButtonTapped:(id)sender;

@end
