# robosys2024
2024年に千葉工業大学未来ロボティクス学科のロボットシステム学で作成したコマンド格納用のリポジトリ

## 概要

- 使用できるコマンド
    - s3_school_credit_generator
    - multiply
    - prime_factorization

## s3_school_credit_generatorコマンドの概要
![test](https://github.com/bloodlemon2/robosys2024/actions/workflows/s3_school_credit_generator_test.yml/badge.svg)

千葉工業大学未来ロボティクス学科の3セメスターの科目を履修して成績を生成することができる.

出力は履修単位数，獲得単位数，GPAが表示される.

科目の難易度は独断と偏見で決めた.

設定されている難易度ごとに乱数を使って成績を決めているので，出力が毎回変わり，楽しむことができる.

フル単位，GPA: 4.0を目指して頑張ってください.

## 使用方法

初めに下の表をもとに履修する科目決める. (同じ科目は複数個履修できない)

| 科目                         | 単位数 | 難易度 | 履修番号 |
| ---------------------------- | ------ | ------ | -------- |
| 英語理解                     | 1      | 普通   | 0        |
| 英語表現                     | 1      | 普通   | 1        |
| ロボット設計製作論実習2      | 2      | 普通   | 2        |
| 教養共通科目                 | 2      | 普通   | 3        |
| 電気電子アクティブラーニング | 2      | 簡単   | 4        |
| 電気電子回路論               | 2      | 簡単   | 5        |
| 制御工学Ⅰ                    | 2      | 難しい | 6        |
| 制御工学Ⅱ                    | 2      | 普通   | 7        |
| 異文化理解                   | 2      | 普通   | 8        |
| メカニクス1                  | 4      | 難しい | 9        |

次に履修する科目に対応する履修番号をechoコマンドで呼び出して，trコマンドで空白を改行に置換したものを標準入力としてプログラムを実行する.

例えば，英語以外の科目すべてを履修することにする.

```
$ echo 2 3 4 5 6 7 8 9 | tr ' ' '\n' | ./s3_school_credit_generator    # 履修番号2~9を標準入力にする
履修単位数: 18, 獲得単位数: 14, GPA: 2.111111111111111
$ echo 2 3 4 5 6 7 8 9 | tr ' ' '\n' | ./s3_school_credit_generator    # もう一度実行してみる
履修単位数: 18, 獲得単位数: 16, GPA: 2.3333333333333335                # 出力が変わる
```

## multiplyコマンドの概要
![test](https://github.com/bloodlemon2/robosys2024/actions/workflows/multiply_test.yml/badge.svg)

標準入力から読み込んだ値すべてをかける.

## 使用方法

```
$ seq 10 | ./multiply    # 1~10の値をかける
3628800
```
```
$ echo -2 3 | tr ' ' '\n' | ./multiply
-6
```

## prime_factorizationコマンドの概要
![test](https://github.com/bloodlemon2/robosys2024/actions/workflows/prime_factorization_test.yml/badge.svg)

標準入力から読み込んだ正の自然数を素因数分解する.

## 使用方法

```
$ echo 8 | ./prime_factorization
8=2*2*2
```
```
$ echo 17 | ./prime_factorization
17=17
```
## おすすめの使用方法
multiplyコマンドとの併用

```
$ seq 10 | ./multiply | ./prime_factorization
3628800=2*2*2*2*2*2*2*2*3*3*3*3*5*5*7
```

## ダウンロード方法

```
# このリポジトリをクローン
$ git clone https://github.com/bloodlemon2/robosys2024.git
```

## 起動手順

```
# ディレクトリに移動
$ cd robosys2024
# その後，コマンドの使用方法をもとに実行
```

## 必要なソフトウェア
- Python
    - テスト済みバージョン: 3.7~3.12

## テスト環境
- Ubuntu 22.04

## ライセンス

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，s3_school_credit_generator，multiply，prime_factorization，test1.bash，test2.bash，test3.bash以外のコードはRyuichi Ueda由来のコード（plus，test.bash）を利用しています．
- このパッケージのコードは，[こちら](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
- © 2024 Tomoya Tsuji
