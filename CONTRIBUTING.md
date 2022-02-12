# Contribution Guide

`Roots_home`の編集に協力して頂きありがとうございます。

ざっくりとしたルールをここに記載します。

- PR、issue大歓迎です。
- 下記の手順に従って**ローカルテスト**した後にPRを作成してください
- その他、細かいルールは下記を参照してください

## ローカルでテストする

`Roots_home`の見栄えをローカルでチェックしてから、GitHubにPushしましょう。

`Roots_home`は[MkDocs](https://www.mkdocs.org/)というPythonベースのソフトウェアによって生成されています。
このソフトウェアをローカル環境に構築するのは手間なので、
[Docker](https://www.docker.com/get-started)を使用して、環境構築を省きます。

Dockerをインストールした環境で、
次のコマンドで`Roots_home`をクローンし、webページを生成してブラウザで表示します。

```sh
$ git clone https://github.com/SSL-Roots/Roots_home
$ cd Roots_home
$ ./build.sh

...
INFO     -  Documentation built in 1.55 seconds
INFO     -  [13:02:40] Serving on http://127.0.0.1:8000/Roots_home/
```

コマンドを実行したらブラウザで
[http://127.0.0.1:8000/](http://127.0.0.1:8000/)
にアクセスしましょう。

## Roots_homeを編集する

### 作成するファイルについて

**Markdown**ファイルを編集するだけでページを作成できます。
HTMLやCSSの知識は不要です。

### ブランチについて

`master`ブランチにPushすると、GitHub Actionsでスクリプトが実行され、
GitHubサーバ上の`gh-pages`ブランチへマージされます。

実際にWebsiteとして表示されるのは`gh-pages`のコンテンツです。
