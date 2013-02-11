//
//  ActivityDemoViewController.m
//  CSLINEOpenerDemo
//
//  Created by Zushi Tatsuya on 2013/02/11.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import "ActivityDemoViewController.h"
#import "CSLINEOpenerActivity.h"

@interface ActivityDemoViewController ( )
@property (nonatomic, strong) NSMutableArray *activityItems;
@end


@implementation ActivityDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)activityItems
{
    if (_activityItems == nil) {
        _activityItems = [[NSMutableArray alloc] init];
    }
    
    return _activityItems;
}

- (void)addSampleImage
{
    [self.activityItems addObject:[UIImage imageNamed:@"first"]];
}

- (void)addSampleText
{
    NSString *sampleText = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
    [self.activityItems addObject:sampleText];
}

- (IBAction)segmentedControlChanged:(id)sender
{
    [self.activityItems removeAllObjects];
    UISegmentedControl *segment = (UISegmentedControl *)sender;
    switch (segment.selectedSegmentIndex) {
        case 0:
            [self addSampleText];
            break;
        case 1:
            [self addSampleImage];
            break;
        case 2:
            [self addSampleText];
            [self addSampleImage];
            break;
        default:
            break;
    }
}

- (IBAction)activityButtonAction:(id)sender
{
    if ([self.activityItems count] == 0) {
        [self addSampleText];
    }
    
    NSArray *applicationActivities = @[[[CSLINEOpenerActivity alloc] initWithTitle:nil icon:[UIImage imageNamed:@"second"]]];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:self.activityItems
                                                                                         applicationActivities:applicationActivities];
    [self presentViewController:activityViewController animated:YES completion:NULL];
}
@end
