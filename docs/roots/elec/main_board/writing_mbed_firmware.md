# メインマイコンのファームウェア書き込み方法

`このページでは2017年モデルの設計資料を紹介します`

メインマイコンにはmbedを使用しています。

## 1. ARMmbedのサイトにSignUpする。
1. [ARMmbedsite](https://developer.mbed.org/accounts/login/?next=%2Fcompiler%2F)に移動する
2. Signupボタンを押す。
3. 必要事項を記入する。

## 2. プログラムをインポートする。(Platformの選択方法も含む）
1. "Workspace Management"のYour Program Workspace is empty. You can import a program or create a new one.の”import a program"をクリック。
2. "Add Platform"のウィンドウのAdd Platformのボタンを押す。
3. 左サイドメニュー（Filter）の”Target Vendor"の”STMicroelectronics"にチェックを入れる。
4. 下にスクロールし、”NUCLE-F303K8”をクリック。
5. 右サイドバーのAdd to your mbed Compilerボタンをクリック→これで"Workspace Management"のPlatformが設定される。
6. 右記URLに移動する。[RootsMainBordProgram](https://developer.mbed.org/users/alt0710/code/Roots/)
7. 右サイドバーにあるImport into Compilerボタンをクリック。
8. "Import Program"ウィンドウのImportボタンをクリック。　※Update:チェックは入れない（最新版LibのCANに不具合あり）

## 3. プログラムをビルドする。
1. ビルド対象のプログラムを選択→"Compiler"ページの上部青帯内の文字が選択したプログラムになって入ればOK。
2. 上部メニューバーのコンパイルボタンをクリック。
3. mbedに書き込むbinファイルが生成される。

## 4. プログラムを書き込む。
1. mbedをPCに接続する。
2. 生成したbinファイルをドラッグ&ドロップで認識しているmbedに書き込む。
