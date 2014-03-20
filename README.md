# CSNLINEOpener

## 概要

NAVER (LINE) が提供している LINE アプリへ "LINEで送るボタン" 機能を提供します。ご利用には [ガイドライン](http://media.line.naver.jp/guideline/ja/ "ガイドライン｜LINEで送るボタン") に従う必要があります。

LINE アプリに対して文字列もしくは画像を送る `CSNLINEOpener` クラスと UIActivity のサブクラス `CSNLINEOpenerActivity` があります。

## 使い方

### CSNLineOpener

```objc
if ([CSNLINEOpener canOpenLINE]) {
    [CSNLINEOpener openLINEAppWithText:someText];
} else {
    [CSNLINEOpener openAppStore];
}
```

### CSNLINEOpenerActivity

```objc
NSArray *applicationActivities = @[[[CSNLINEOpenerActivity alloc] initWithTitle:@"LINEで送る" icon:[UIImage imageNamed:@"icon"]]];
UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[text, icon]
                                                                                    applicationActivities:applicationActivities];
[self presentViewController:activityViewController animated:YES completion:NULL];
```

## インストール

Use CocoaPods,

```
pod 'CSNLINEOpener', '~> 0.0'
```

## ライセンス

MIT License
