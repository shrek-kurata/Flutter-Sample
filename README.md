# これについて

Penmarkメンバー用のサンプルアプリ


1. flutter入れる
2. flutter doctorで、必要なパッケージ群を確認
3. 実行

Firebaseの設定ファイル入れる必要あるよ

# ある程度簡単なCoding規約
- Swiftと同じようなselectorを用意する
- 型付けを必ず！
- assertでのきめ細かいチェック
- Value Objectは不変性を保証する為、constで(Widgetもなるべく)
- enumは貧弱だけど、公式のに大人しく従う(enumの適切な表現はpresentation層、infra層で行う)
- property を private setter にしたいけど、いい方法ないかな…
- Repository, Service等、Context上明示的なものでも、Domain Entityの引数に渡す(Me#sendVerifyMail(from:to:) を参考に)

# 案
## Nullの明示について
@nullableを自作したけどどうかな?
-> Dart linterを使おう！[(ここ)](https://www.dartlang.org/guides/language/analysis-options)

## Futureの型づけについて
`Future<void>`ではなく、`Future`と書くと`Future<dynamic>`となってしまう。  
厳格な型づけをする為、`Future<void>`と書こう。

# DDDのメモ
- Aggregate下のEntityは、Aggregate rootを経由してのみ取得可能. 境界線をしっかり引く！

# Diff between dart:async <--> RxDart
- dart:async's stream is cold(single-subscription) in default.
- Single in RxDart <--> Future in dart:async
- Streams in Dart do not close by default when an error occurs. In Rx, an Error causes the Observable to terminate unless it is intercepted by an operator.
- Dart streams are asynchronous by default, whereas Observables are synchronous by default, unless you schedule work on a different Scheduler

see [here](https://pub.dartlang.org/documentation/rxdart/latest/rx/Observable-class.html) for any details.

# Flutterの細かい仕様について

## Laying out (layoutingじゃないよ！)
laying outのための用語をしっかり認識しよう!
Day of Flutterとか見とくといいかも…
Constraintは使わない方(Alain, Padding is better)がいいとか

## Performance
flutterでのWidgetは大きく分けて、4つある。

- StatelessWidget
- StatefullWidget
- InheritedWidget
- RenderObjectWidget

それぞれの違いをちゃんと把握して、ハイパフォーマンスなアプリを作ろう!  
- [InheritedWidgetについて](https://qiita.com/ko2ic/items/d7b744f19f213ef1e647)  
- [BuildContextについて](https://qiita.com/ko2ic/items/f7bf98b4a30049027470)
- [Widget, Element, RenderObjectについて](https://medium.com/flutter-jp/dive-into-flutter-4add38741d07)
- [必読！パフォーマンス改善の為に理解すべきこと](https://medium.com/flutter-jp/state-performance-7a5f67d62edd)

BLoCを使うにせよ、scoped_modelを使うにせよ、これらの理解は欠かせない…

- [Inside Flutterの日本語訳](https://qiita.com/CostlierRain464/items/c7d99b77b77f43537415#準線形レイアウト)