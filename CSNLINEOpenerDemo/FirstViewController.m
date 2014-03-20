//
//  FirstViewController.m
//  CSNLineOpenerDemo
//
//  Created by griffin_stewie on 2013/02/11.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import "FirstViewController.h"
#import "CSNLINEOpener.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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

- (IBAction)segmentedControlChanged:(id)sender
{
    UISegmentedControl *segment = (UISegmentedControl *)sender;
    switch (segment.selectedSegmentIndex) {
        case 0:
            self.textView.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
            break;
        case 1:
            self.textView.text = @"ゆめみがちサロン : 任天堂社長　岩田聡伝説 - ライブドアブログ http://blog.livedoor.jp/yumemigachi_salon/archives/51456652.html";
            break;
        case 2:
            self.textView.text = @"・全てのゴルフゲームの原型を作った（あのショットするときのバーとかグリーンの傾きとか）\nバルーンファイトのプログラミングを一人でやった。ちなみにバルーンファイトはたった3人で作られた。\n・マザー２の制作が行き詰まっていたときヘルプとして呼ばれ、\n「今あるプログラムを使うと完成まで2年かかります。ですが私が一から作れば1年で出来ます」\nと豪語し事実その通り完成させた。\n・桜井が企画したスマブラの原案を一人でプログラミングした。\nハル研の社長として経営の仕事が忙しくなったが、休日出勤して趣味のプログラミングをしていた。";
            break;
        case 3:
            self.textView.text = @"はてなブックマーク http://b.hatena.ne.jp/viewer?preview=http%3A%2F%2Fmatome.naver.jp%2Fodai%2F2135953113140490201";
            break;
        case 4:
            self.textView.text = @"藤井太洋「Gene Mapper」読了。ほとんどをKindle Paperwhiteではなく、iPhone4Sで読んだ。なかなか面白く一気に読めた。次にも期待。";
            break;
            
        default:
            break;
    }
}

- (IBAction)sendTextButtonTapped:(id)sender
{
    if ([CSNLINEOpener canOpenLINE]) {
        [CSNLINEOpener openLINEAppWithText:self.textView.text];
    } else {
        [CSNLINEOpener openAppStore];
    }
}
@end
