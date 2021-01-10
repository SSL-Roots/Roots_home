# モータドライバ制御マイコンのファームウェア書き込み方法

モータドライバ制御用マイコンにはdsPICを使用しています。

## 1. Microchipのサイトに行き、MPLAB　Xを入手する。
1. [Microchipsite](http://www.microchip.com/ja/mplab/mplab-x-ide)に移動する
2. "アーカイブのダウンロード”Tabをクリック。
<img src="../../images/roots_electrical/mdfm_downloadTab.png" width="640px">

3. 使用しているOSにあったMPLAB Xをダウンロード　　※’17/7/25時点　MacOSのMPLABXv2.20　をダウンロード
<img src="../../images/roots_electrical/mdfm_download_mac_mplabx.png" width="640px">

4. ダウンロードしたインストーラを起動※Java(tm)がないと言われたら番外編へ
5. "I accept the agreement"にチェックといれ、"Next"ボタンをクリックし、インストールを進める。
<img src="../../images/roots_electrical/mdfm_MplabXinstall.png" width="640px">

## 2. Microchipのサイトに行き、XCコンパイラを入手する。
1. 右記URLに移動する。
[XC_Compiler](http://www.microchip.com/ja/mplab/compilers)
2. "アーカイブのダウンロード”Tabをクリック。
<img src="../../images/roots_electrical/mdfm_xc_compiler_tab.png" width="640px">

3. 使用しているOSにあったXC16コンパイラをダウンロード　　※’17/7/25時点　MacOSのXC16　v１.22をダウンロード
<img src="../../images/roots_electrical/mdfm_xc_compiler_select.png" width="640px">

4. ダウンロードしたインストーラを起動
5. "I accept the agreement"にチェックといれ、"Next"ボタンをクリックし、インストールを進める。
<img src="../../images/roots_electrical/mdfm_xc_compiler_agreement.png" width="640px">

6. ”install　compiler”を選択。
<img src="../../images/roots_electrical/mdfm_xc_compiler_install.png" width="640px">

7. "Installation type"ページはそのままで次へ。
<img src="../../images/roots_electrical/mdfm_xc_compiler_installation_type.png" width="640px">

8. 環境変数を追加するためにチェックを入れる。
<img src="../../images/roots_electrical/mdfm_xc_compiler_variables
.png" width="640px">

## 3. プログラムをダウンロードする。
1. 右記サイトに移動する。[MotorDriver](https://github.com/SSL-Roots/ROOTS_BLDC_MotorControl)
2. ”clone　or　download”ボタンをクリック。
<img src="../../images/roots_electrical/mdfm_clonedownloadButtun.png" width="640px">

3. "Download　ZIP”ボタンをクリック。
<img src="../../images/roots_electrical/mdfm_ZIPdownload.png" width="640px">

4. ダウンロードしたZIPファイルを解凍する。

## 4. MPLABXでプログラムを開く。
1. MPLABXを起動する。
2. ”Open　Project”ボタンをクリックする。
<img src="../../images/roots_electrical/mdfm_OpenProject.png" width="640px">

3. ダウンロードしたプログラムを解凍したディレクトリに移動する。
<img src="../../images/roots_electrical/mdfm_ProjectSelect_1.png" width="640px">

4. "Open”ボタンをクリック。
<img src="../../images/roots_electrical/mdfm_ProjectSelect_2.png" width="640px">

## 5. プログラムをビルドする。
1. ”Clean and Build Project"ボタンをクリック。
<img src="../../images/roots_electrical/mdfm_BuildButton.png" width="640px">

2. ”Output”Tabに”BUILD SUCCESSFUL”と出力されれば、ビルド完了。
<img src="../../images/roots_electrical/mdfm_Buildoutput.png" width="640px">

## 6. プログラムを書き込む。
1. Pickit3とMDを以下のように接続する。

`画像準備中です`
<!-- TODO:(堀江)※後に図を差し替える -->
<!-- <img src="../../images/roots_electrical/mdfm_Buildoutput.png" width="640px"> -->

2. "Make and Program Device"ボタンをクリック。
<img src="../../images/roots_electrical/mdfm_programDevice.png" width="640px">


## 番外編：インストール時Java(tm)がないと怒られた場合
1. Javaダウンロードサイトに移動する。[Java:JRE](https://support.apple.com/kb/DL1572?locale=ja_JP)
2. ”ダウンロード”ボタンをクリック。
3. ダウンロードしたインストーラを起動し、インストールする。
