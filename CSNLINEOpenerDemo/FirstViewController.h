//
//  FirstViewController.h
//  CSNLineOpenerDemo
//
//  Created by griffin_stewie on 2013/02/11.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;


- (IBAction)segmentedControlChanged:(id)sender;
- (IBAction)sendTextButtonTapped:(id)sender;

@end
