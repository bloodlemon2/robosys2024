# robosys2024
ロボットシステム学で作成したコマンド
## 概要

- 使用できるコマンド
    - prime_factorization

## prime_factorizationコマンドで出来ること

標準入力から読み込んだ正の自然数を素因数分解する

## 使用方法

```
$ echo 8 > nums
$ ./prime_factorization < nums
8=2*2*2
```
```
$ echo 8 | ./prime_factorization
8=2*2*2
```

## インストール方法

```
このリポジトリをクローン
$ git clone https://github.com/bloodlemon2/robosys2024.git

ディレクトリに移動
$ cd robosys2024
```




## ライセンス

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，Ryuichi Ueda由来のコード（© 2024 puls, test.bash）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
- © 2024 Tomoya Tsuji
