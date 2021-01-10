# モータドライバ制御マイコンのファームウェア書き込み方法

`このページでは2017年モデルの設計資料を紹介します`

モータドライバ制御用マイコンにはdsPICを使用しています。

## 1. MicrochipのサイトでMPLAB Xを入手する

1. [Microchipsite](http://www.microchip.com/ja/mplab/mplab-x-ide)に移動する
2. "アーカイブのダウンロード”Tabをクリック。
![a](../../../img/roots_electrical/mdfm_downloadTab.png){: style="width:640px"}

3. 使用しているOSにあったMPLAB Xをダウンロード　　※’17/7/25時点　MacOSのMPLABXv2.20　をダウンロード
![a](../../../img/roots_electrical/mdfm_download_mac_mplabx.png)

4. ダウンロードしたインストーラを起動※Java(tm)がないと言われたら番外編へ
5. "I accept the agreement"にチェックといれ、"Next"ボタンをクリックし、インストールを進める。
![a](../../../img/roots_electrical/mdfm_MplabXinstall.png)

## 2. Microchipのサイトに行き、XCコンパイラを入手する。

1. 右記URLに移動する。
[XC_Compiler](http://www.microchip.com/ja/mplab/compilers)
2. "アーカイブのダウンロード”Tabをクリック。
![a](../../../img/roots_electrical/mdfm_xc_compiler_tab.png)

3. 使用しているOSにあったXC16コンパイラをダウンロード　　※’17/7/25時点　MacOSのXC16　v１.22をダウンロード
![a](../../../img/roots_electrical/mdfm_xc_compiler_select.png)

4. ダウンロードしたインストーラを起動
5. "I accept the agreement"にチェックといれ、"Next"ボタンをクリックし、インストールを進める。
![a](../../../img/roots_electrical/mdfm_xc_compiler_agreement.png)

6. ”install　compiler”を選択。
![a](../../../img/roots_electrical/mdfm_xc_compiler_install.png)

7. "Installation type"ページはそのままで次へ。
![a](../../../img/roots_electrical/mdfm_xc_compiler_installation_type.png)

8. 環境変数を追加するためにチェックを入れる。
![a](../../../img/roots_electrical/mdfm_xc_compiler_variables.png)

## 3. プログラムをダウンロードする。

1. 右記サイトに移動する。[MotorDriver](https://github.com/SSL-Roots/ROOTS_BLDC_MotorControl)
2. ”clone　or　download”ボタンをクリック。
![a](../../../img/roots_electrical/mdfm_clonedownloadButtun.png)

3. "Download　ZIP”ボタンをクリック。
![a](../../../img/roots_electrical/mdfm_ZIPdownload.png)

4. ダウンロードしたZIPファイルを解凍する。

## 4. MPLABXでプログラムを開く。

1. MPLABXを起動する。
2. ”Open　Project”ボタンをクリックする。
![a](../../../img/roots_electrical/mdfm_OpenProject.png)

3. ダウンロードしたプログラムを解凍したディレクトリに移動する。
![a](../../../img/roots_electrical/mdfm_ProjectSelect_1.png)

4. "Open”ボタンをクリック。
![a](../../../img/roots_electrical/mdfm_ProjectSelect_2.png)

## 5. プログラムをビルドする。

1. ”Clean and Build Project"ボタンをクリック。
![a](../../../img/roots_electrical/mdfm_BuildButton.png)

2. ”Output”Tabに”BUILD SUCCESSFUL”と出力されれば、ビルド完了。
![a](../../../img/roots_electrical/mdfm_Buildoutput.png)

## 6. プログラムを書き込む。

1. Pickit3とMDを以下のように接続する。

`画像準備中です`
<!-- TODO:(ykek)※後に図を差し替える -->

2. "Make and Program Device"ボタンをクリック。

![a](../../../img/roots_electrical/mdfm_programDevice.png)

## 番外編：インストール時Java(tm)がないと怒られた場合

1. Javaダウンロードサイトに移動する。[Java:JRE](https://support.apple.com/kb/DL1572?locale=ja_JP)
2. ”ダウンロード”ボタンをクリック。
3. ダウンロードしたインストーラを起動し、インストールする。
