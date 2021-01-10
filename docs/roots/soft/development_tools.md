# 戦略ソフト班の開発ツール

## PC

試合に使用するPC（通称AI-PC）のスペックは以下のとおりです。

* Intel(R) Core(TM) i5-6600K CPU @ 3.50GHz
* 8 GB of RAM
* 有線LANポート（試合会場では有線LANで、Visionサーバからロボット・ボール位置座標データを受信します)
* USBポート（ロボットと通信するXbeeモジュールを接続するため）

## CON-SAI

Rootsが開発、公開しているゲームソフトウェアです。
ROS（Robot Operating System）をベースに設計されています。

- [CON-SAI](https://github.com/SSL-Roots/CON-SAI)
    - ROS Kineticをベースに設計されています
    - 現在は使用されていません
- [CON-SAI2](https://github.com/SSL-Roots/consai2)
    - ROS Melodicをベースに設計されています
- [CON-SAI2 R2](https://github.com/SSL-Roots/consai2r2)
    - CON-SAI2をROS2ベースで設計しているソフトウェアです
    - 現在開発中です

## エディタ

ROSは特別にIDEが用意されていないため、
どのエディタを用いてもプログラムを作成できます。(Vim, Emacs, Atom, etc...)
