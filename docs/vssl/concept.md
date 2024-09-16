
# SSLよりもっと小さいロボットに挑戦

RoboCup SSL（ロボカップサッカー小型ロボットリーグ）では直径18 cmのロボット11台でサッカーを行います。

![](../img/vssl/ssl_11robots.jpg)

フィールドサイズは12 m x 9 mです。

![](../img/vssl/ssl_field.png)

これは...**とても大きい！** Not small size です！

ロボットがもっと小さければ、フィールドがもっと小さければ、  
**もっと手軽にRoboCup SSLを楽しむ**ことができるのではないでしょうか？

![](../img/vssl/vssl_robot_with_ball.png)

## もっと小さいロボットを作ってみました

![](../img/vssl/vssl_robots.jpg)

日本のロボカップSSLチームである**Roots**と[OP-AmP](https://sites.google.com/view/op-amp/home/activity)
が、
もっと小さいSSLロボット作りに挑戦しています。

<div style="display: flex; justify-content: center; align-items: center; height: 300px;">
  <figure style="margin: 0 10px;">
    <img src="../../img/roots_logo_small.png" width="300" />
  </figure>
  <figure style="margin: 0 10px;">
    <a href="https://sites.google.com/view/op-amp/home/activity">
      <img src="../../img/vssl/op_amp.png" width="300" />
    </a>
  </figure>
</div>

## 現在の取り組みについて

**できるだけRoboCup SSLの資産を流用する**
という方針で、いくつかルールを設けてロボットを作っています。

### ロボットのサイズは直径8 cm、高さ8 cm

ロボットの直径と高さは8 cmです。
まさに手のひらサイズのロボットです。

![](../img/vssl/vssl_robot_top.jpg)

SSLでおなじみのビジョンマーカも使用します。
もちろんサイズは小さくなります。

![](../img/vssl/vssl_robots_with_marker.png)

マーカの寸法はこちらです。

![](../img/vssl/vssl_marker.png)

### バッテリに使えるのは乾電池のみ

**安全のため**、ロボットのバッテリには乾電池のみを使用します。

![](../img/vssl/vssl_robots_with_battery.png)

ロボットのバッテリには、Li-PoやLi-Feなどのパワフルなものがよく使用されます。
これらのバッテリは、大きなエネルギーを持つ反面、取り扱いに注意が必要です。

**もっと手軽にRoboCup SSLを楽しむ**ために、比較的安全に使える乾電池を使用します。

### テーブルサッカー用のボールを使用する

**できるだけRoboCup SSLの資産を流用する**ためには、**オレンジ色の小さいボール**が必要です。

そこで、テーブルサッカー（FoosBall）で使用されるボールを選びました。
直径は約3.2 cmです。  

Rootsは[Perfeclanが販売しているボール](https://amzn.asia/d/doyjXYm)を使用しています。

![](../img/vssl/vssl_foos_ball.png)

### ビジョンシステムにはRoboCup SSL公式のソフトウェアを使用する

RoboCup SSL公式が提供する[SSL-Vision](https://github.com/RoboCup-SSL/ssl-vision)
を使用して、ロボットとボールの位置を検出します。

![](../img/vssl/vssl_vision_system.png)

## ロボットのスペック

Rootsが製作したロボットのスペックは以下の通りです。

### 2024年版のロボットスペック

| 項目 | スペック |
| --- | --- |
| バッテリ | Panasonic eneloop BK-3MCD x2 |
| モータ | タミヤ FA-130 |
| ホイール | 自作3Dプリント製オムニホイール x3 |
| ギア比 | 1:33.3 |
| キッカー | ラックアンドピニオンとバネ（未完成） |
| ドリブラー | 3Dプリント製ローラー（未完成） |
| メインマイコン | M5Stamp S3 |
| PCとの通信 | 2.4 GHz Wi-Fi |


### 2024年版のロボット画像

![](../img/vssl/vssl_roots_robot01.png)
![](../img/vssl/vssl_roots_robot02.png)
![](../img/vssl/vssl_roots_robot03.png)
![](../img/vssl/vssl_roots_robot04.png)
![](../img/vssl/vssl_roots_robot05.png)
![](../img/vssl/vssl_roots_robot06.png)
