# CSNLineOpener

## 概要

NAVER (LINE) が提供している LINE アプリへ "LINEで送るボタン" 機能を提供します。ご利用には [ガイドライン](http://media.line.naver.jp/guideline/ja/ "ガイドライン｜LINEで送るボタン") に従う必要があります。

LINE アプリに対して文字列もしくは画像を送る `CSNLineOpener` クラスと UIActivity のサブクラス `CSNLineOpenerActivity` があります。

## 使い方

### CSNLineOpener

```
if ([CSNLineOpener canOpenLINE]) {
    [CSNLineOpener openLINEAppWithText:someText];
} else {
    [CSNLineOpener openAppStore];
}
```

### CSNLineOpenerActivity

```
NSArray *applicationActivities = @[[[CSNLineOpenerActivity alloc] initWithTitle:@"LINEで送る" icon:[UIImage imageNamed:@"icon"]]];
UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[text, icon]
                                                                                    applicationActivities:applicationActivities];
[self presentViewController:activityViewController animated:YES completion:NULL];
```

## インストール

CSNLineOpener フォルダをプロジェクトに追加してください。

## ライセンス

MIT License
