# CSLINEOpener

## 概要

NAVER (LINE) が提供している LINE アプリへ "LINEで送るボタン" 機能を提供します。ご利用には [ガイドライン](http://media.line.naver.jp/guideline/ja/ "ガイドライン｜LINEで送るボタン") に従う必要があります。

LINE アプリに対して文字列もしくは画像を送る `CSLINEOpener` クラスと UIActivity のサブクラス `CSLINEOpenerActivity` があります。

## 使い方

### CSLINEOpener

```
if ([CSLINEOpener canOpenLINE]) {
    [CSLINEOpener openLINEAppWithText:someText];
} else {
    [CSLINEOpener openAppStore];
}
```    
    
### CSLINEOpenerActivity

```
NSArray *applicationActivities = @[[[CSLINEOpenerActivity alloc] initWithTitle:@"LINEで送る" icon:[UIImage imageNamed:@"icon"]]];
UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[text, icon]
                                                                                    applicationActivities:applicationActivities];
[self presentViewController:activityViewController animated:YES completion:NULL];
```

## インストール

CSLINEOpener フォルダをプロジェクトに追加してください。

## ライセンス

MIT License

Copyright (c) 2013 griffin_stewie

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



