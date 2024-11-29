# Task1
本リポジトリは,千葉工業大学先進工学部未来ロボティクス学科 ロボットシステム学(2024)の課題1で使用したリポジトリです.

[![Build Status](https://github.com/coffee0141/Task1/actions/workflows/test.yml/badge.svg)](https://github.com/coffee0141/Task1/actions/workflows/test.yml)

## プログラム詳細
・一日の運勢を占うプログラム 
・回数を選択し、４種類の運勢の中からランダムに選ばれたものを出力する

## インストール方法
```bash
$ git clone https://github.com/coffee0141/Task1.git
$ cd Task1
$ chmod +x omikuji
```
## 実行例
```bash
seq 10 | python3 omikuji
3 小吉
3 大吉
2 凶
2 中吉
```

## 注意書き
・使用するコンピュータのメモリ容量に依存しますが,一般的な環境（8GB～16GBのRAM）では,おみくじの回数を1000000回以下にすることを推奨します.

・入力する回数が増えると,プログラムの実行時間も長くなります.

・極端に大きな数値を入力した場合,プログラムが予期しない動作をする可能性があります.

## ソフトウェア
Python テスト済み:3.7~3.10

## テスト環境
Ubuntu 20.04

## ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.

本パッケージは,Haru Motoyama/emclによって提供され,3条項BSDライセンスの条件に基づいて利用可能なコード（© 2024 Haru Motoyama）を含んでいます.

© 2024 Haru Motoyama
