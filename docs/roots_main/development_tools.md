# Rootsの開発ツール一覧

Rootsがロボットの開発に使用しているソフトウェア・ハードウェアを紹介します。


## ハードウェア
Rootsで使用している加工機などを紹介します．
### Univarsal Laser VLS4.60
レーザー加工機です。Rootsのロボット筐体はほぼ全てMDFをレーザーカットで切り出して製作しています。

### kitmil
CNC加工機です．
CADで作ったデータをもとに部品を作ります．

## ソフトウェア

### 電子回路関係
#### EAGLE
無料で使用できる回路用のCADソフトです．
作成する基板のサイズ制限などがあります．
無料で使う範囲でも十分利用できますがメイン基板作成にはホビーアカウントがあった方がいいでしょう．

入手先：https://www.autodesk.com/products/eagle/overview

作った基板は基板製作の会社へ発注します．
はんだ付けはメンバーで行っています．

#### MPLAB X
モータ駆動用のマイコンであるdsPICのIDEです．
無料で使用できます．
dsPICを製作しているmicrochip社が公開しています．

#### mbed開発用
メイン基板のマイコンであるmbed開発はブラウザで行うようになっています．

### メカ
#### Fusion 360
無料で使用できるCADソフトです．
ロボットを設計し，加工機用のデータへ変換・出力します．

### 戦略ソフトウェア(AI)
#### PC
Rootsが使用しているAI-PCのスペックは以下のとおりです。
* Intel(R) Core(TM) i5-6600K CPU @ 3.50GHz
* 8 GB of RAM
* 有線LANポート（試合会場では有線LANで、Visionサーバからロボット・ボール位置座標データを受信します)
* USBポート（ロボットと通信するXbeeモジュールを接続するため）

#### Ubuntu 18.04
Linuxのディストリビューションのひとつです．
戦略ソフトウェアのベース部分としてROS (Robot Operating System) を使用しています。

#### Language and Library
* C++ and Python
* ROS Indigo
* Google Protocol Buffer

#### Editor
ROSは特別にIDEが用意されていないため、どのエディタを用いてもプログラムを作成できます。(Vim, Emacs, Atom, etc...)
