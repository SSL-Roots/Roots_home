# ロボカップSSLのロボットに必要な機能

## 全方向移動
　ロボットはその場での回転や前を向いたままの横移動など，縦横無尽な動きを要求されます．そのため，殆どのチームはオムニホイールと呼ばれる特殊な車輪を使用しています．オムニホイールは車輪の外周に，軸方向に回転する小車輪を備えたものです．この車輪を互いに角度を持たせて取り付けることで全方向移動を実現することができます．

### モータの選定
　車輪を回すモータは小さなロボットに多くの機能を詰め込むことから小型であることが望ましいです．多くのチームがmaxon社のEC-Flatシリーズを使用しています．RootsでもEC-Flat 30Wを使用しています．最近は50，70Wと大出力のモータを使用するチームも現れています．

　EC-Flatシリーズはブラシレスモーターであるため，3相インバータが必要となります．また，回転数の制御をするためにもロータリーエンコーダなどで回転数を検出する必要があります．

## 無線通信
　ロボットは無線通信でAI PCから指令を受けて動きます．ルール上Bluetoothは認められていないため，それ以外の無線方式を採用して通信を確立する必要があります．

　また，会場ではSSL以外にも他のリーグが開催されていることや，観客の携帯端末などがあることを考慮する必要があります．ひどいときには通信がうまくいかずその結果，試合に負けてしまうこともあります．

　ちなみに，RootsではZigBee規格を使用しています．

## 耐衝撃性
　強いチームはロボットが衝突しないように経路を考え，相手からロボットを避けてくれますが，すべての試合でできるとは限りません．また，ボールも最大8 m/sのスピードが出るためロボットに当たっても大丈夫なようにしなければなりません．

　基本，ロボットには外装を用意します．この外装により，ボールがロボット本体にあたり壊れてしまうことを防ぎます．また，本体自体を強化しロボット同士が衝突しても壊れないようにします．

　外装もロボット本体がメンテナンスしやすいように取り外しを容易にするなど．重要な要素となります．

## ボールを蹴る機構
　ロボットが無線で動けば試合に参加することはできます．しかし，サッカーである以上，ボールを蹴る必要があります．
　ボールを蹴る機構の条件として，何度も蹴られること，蹴ったあと再度蹴るまでの時間が短いことが挙げられます．これらを考慮し，多くのチームはソレノイドを使ってボールを蹴っています．
　ソレノイドは導線を巻いたコイルに電流を流すとコイルが磁化するため，鉄心を引き寄せることを利用したアクチュエータです．このソレノイドを高い電圧（Rootsは200V）で動作させてボールを蹴ります．高い電圧を生み出すためには昇圧回路が必要となり，昇圧回路でコンデンサを充電してボールを蹴ります．

### 昇圧回路
　昇圧回路はコイルとFETやIGBTといったスイッチングデバイスを用いてバッテリーなどの低電圧から200Vなどの高い電圧へ「昇圧」する回路となります．昇圧回路の性能によってボールを蹴った後，再度ボールを蹴るまでのチャージ時間が決定されます．

　適正な回路設計をしなければ回路が焼けてしまうなどの被害を受けてしまいます．また，コンデンサにチャージした電荷で感電する場合もありますので，慎重に取り扱う必要があります．

## ボールを検知する機構
　ロボットがボールを蹴るために，ボールを持っていることを検知する機能が必要となります．
　方法は複数ありますが，Rootsではロボット前面のボールを受ける部分が遮断されたら検知する，透過型の光センサを設けて検知しています．既存のセンサは高く，大きいためLEDとフォトトランジスタなどを組み合わせて実現しています．

## ドリブル
　ドリブル機構は自分がボールを蹴るときにボールの位置を安定させる他に，味方のパスを受け取る際などに役立ちます．

　ドリブル機構はロボット前面に回転するバーを設けてモータで回すことで実現します．ドリブル機構自体に動く余地を持たせてクッション性を与えることもできます．