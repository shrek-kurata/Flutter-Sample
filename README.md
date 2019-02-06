# これについて

Penmarkメンバー用のサンプルアプリ


1. flutter入れる
2. flutter doctorで、必要なパッケージ群を確認
3. 実行

Firebaseの設定ファイル入れる必要あるよ

# ある程度簡単なCoding規約
- Swiftと同じようなselectorを用意する
- 型付けを必ず
- Value Objectは不変性を保証する為、constで
- enumは貧弱だけど、とりあえず公式のに大人しく従う(enumの適切な表現はpresentation層、infra層で行う)
- Nullの取り扱いに注意。nullはassertではチェックしてないので(@nonnullとか使う…?)
- property を private setter にしたいけど、いい方法ないかな…
- Repository, Service等、Context上明示的なものでも、Domain Entityの引数に渡す(Me#sendVerifyMail(from:to:) を参考に)

# 案
## Nullの明示について
@nullableを自作したけどどうかな?

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