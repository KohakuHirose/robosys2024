# robosys2024
ロボットシステム学授業用

# 🎸 ギターコードダイアグラム表示ツール

[![test](https://github.com/KohakuHirose/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/KohakuHirose/robosys2024/actions/workflows/test.yml)
[![license](https://img.shields.io/badge/license-BSD--3--Clause-green?style=flat)](https://github.com/KohakuHirose/robosys2024/tree/main?tab=BSD-3-Clause-1-ov-file)

## 概要
- 入力されたコードを、ダイアグラム表示するためのコマンドです。
- ギタリストの練習やコード確認に役立ちます。

### 対応しているコード
- 対応してるコードの詳細は、末尾参照。[対応コード参照](#対応コード参照)
| C | D | E | F | G | A | B |
|---|---|---|---|---|---|---|

## 使い方
### リポジトリのクローン方法
以下の通りにリポジトリをクローンしてください。
```
git clone https://github.com/KohakuHirose/robosys2024.git
cd robosys2024
```

### 実行方法
実行方法は以下の通りです。
```
echo [コード名] | ./fingering_gt
```
- 上記の対応しているコードを［コード名］に入力します。
- コード名は大文字・小文字の区別をしません。


### 実行例
```
$ echo C | ./fingering_gt
コード: C
e o ┌───┬───┬───┬───┬
B   ├─●─┼───┼───┼───┼
G o ├───┼───┼───┼───┼
D   ├───┼─●─┼───┼───┼
A   ├───┼───┼─●─┼───┼
E x └───┴───┴───┴───┴
      1   2   3   4
```
```
$ echo Edim | ./fingering_gt
コード: Edim
e x ┌───┬───┬───┬───┬
B   ├───┼─●─┼───┼───┼
G   ├───┼───┼─●─┼───┼
D   ├───┼─●─┼───┼───┼
A   ├─●─┼───┼───┼───┼
E x └───┴───┴───┴───┴
      7   8   9   10
```
- 横線がギターの弦、縦線がフレットを表します。
- 弦を押さえる位置に●を表示します。
- 左側には、対応する弦の種類と開放弦にはo、ミュートにはｘを表示します。
- 下側には、対応するフレット数を表示します。

## 必要なソフトウェア
- **Python**
	- テスト済みバージョン: 3.7~3.10

## テスト環境
- **Ubuntu** 22.04 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)

 © 2024 Kohaku Hirose

## 対応コード参照

|          | C       | D       | E       | F       | G       | A       | B       |
|----------|---------|---------|---------|---------|---------|---------|---------|
| メジャー | C       | D       | E       | F       | G       | A       | B       |
| マイナー | Cm      | Dm      | Em      | Fm      | Gm      | Am      | Bm      |
| メジャー7 | Cmaj7   | Dmaj7   | Emaj7   | Fmaj7   | Gmaj7   | Amaj7   | Bmaj7   |
| ドミナント7 | C7      | D7      | E7      | F7      | G7      | A7      | B7      |
| マイナー7 | Cm7     | Dm7     | Em7     | Fm7     | Gm7     | Am7     | Bm7     |
| マイナーメジャー7 | CmM7    | DmM7    | EmM7    | FmM7    | GmM7    | AmM7    | BmM7    |
| サスフォー | Csus4   | Dsus4   | Esus4   | Fsus4   | Gsus4   | Asus4   | Bsus4   |
| サスフォー7 | C7sus4  | D7sus4  | E7sus4  | F7sus4  | G7sus4  | A7sus4  | B7sus4  |
| アドナインス | Cadd9   | Dadd9   | Eadd9   | Fadd9   | Gadd9   | Aadd9   | Badd9   |
| マイナーアドナインス | Cmadd9  | Dmadd9  | Emadd9  | Fmadd9  | Gmadd9  | Amadd9  | Bmadd9  |
| シックス | C6      | D6      | E6      | F6      | G6      | A6      | B6      |
| マイナーシックス | Cm6     | Dm6     | Em6     | Fm6     | Gm6     | Am6     | Bm6     |
| オーギュメント | Caug    | Daug    | Eaug    | Faug    | Gaug    | Aaug    | Baug    |
| ディミニッシュ | Cdim    | Ddim    | Edim    | Fdim    | Gdim    | Adim    | Bdim    |
| ディミニッシュ7 | Cdim7   | Ddim7   | Edim7   | Fdim7   | Gdim7   | Adim7   | Bdim7   |
| マイナー7フラット5 | Cm7-5   | Dm7-5   | Em7-5   | Fm7-5   | Gm7-5   | Am7-5   | Bm7-5   |
