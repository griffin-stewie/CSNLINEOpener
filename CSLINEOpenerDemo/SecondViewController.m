//
//  SecondViewController.m
//  CSLINEOpenerDemo
//
//  Created by griffin_stewie on 2013/02/11.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import "SecondViewController.h"
#import "CSLINEOpener.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)photoButtonTapped:(id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.delegate = self;
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)sendImageButtonTapped:(id)sender
{
    if (self.imageView.image) {
        if ([CSLINEOpener canOpenLINE]) {
            [CSLINEOpener openLINEAppWithImage:self.imageView.image];
        } else {
            [CSLINEOpener openAppStore];
        }
    }
}


#pragma mark -
#pragma mark Delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
@end
