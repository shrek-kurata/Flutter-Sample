# これについて

Penmarkメンバー用のサンプルアプリ


1. flutter入れる
2. flutter doctorで、必要なパッケージ群を確認
3. 実行

# ある程度簡単なCoding規約
- Swiftと同じようなselectorを用意する
- 型付けを必ず
- Value Objectは不変性を保証する為、constで
- enumは貧弱だけど、とりあえず公式のに大人しく従う(enumの適切な表現はpresentation層、infra層で行う)
- NUllの取り扱いに注意。nullはassertではチェックしてないので(@nonnullとか使う…?)