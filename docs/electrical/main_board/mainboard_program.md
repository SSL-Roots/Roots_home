# プログラム解説　メインボード編

## メインボード各モジュール説明
<img src="https://lh3.googleusercontent.com/K6mFlLe-W8VUOUskYSjTlpmzO0QEuUa8c_eoYfTTlNq0B0L6sJ9MilZLASQSKEprbomLaqkch4jEpYA=w1080-h1765-rw" width="1080px">
各モジュール機能

1. AI PCから受信した指示を各モジュール用に演算する
2. オムニホイール駆動用MotorDriver　CANによりMainマイコンから指示回転速度を受信し、駆動する
3. AI PCからの指示を受信するための無線モジュール
4. ロボットステータス表示用（[通常mode]：ロボットID、AI PCとの通信状況　[テストmode]：各テストモードの設定・状態　）
5. 昇圧基板に接続されており、mainマイコンから充電指示・キック指示などを送信している
6. ドリブルバー回転用の駆動モータが接続されている
7. ボールがキック可能か判定するためのセンサ
8. ロボットモードに切り替え用（モード0：通常mode　モード1:テストmode）
9. [通常mode]：ロボットID切り替え用　キック用コンデンサの強制放電用　　[テストmode]：各テストmode用の設定用