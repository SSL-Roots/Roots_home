# Contribution Guide

`Roots_home`の編集に協力して頂きありがとうございます。

ざっくりとしたルールをここに記載します。

- PR、issue大歓迎です。
- 下記の手順に従って**ローカルテスト**した後にPRを作成してください
- その他、細かいルールは下記を参照してください

## ローカルでテストする

`Roots_home`の見栄えをローカルでチェックしてから、GitHubにPushしましょう。

### 環境設定

`Roots_home`は[MkDocs](https://www.mkdocs.org/)というPythonベースのソフトウェによって生成されています。

[MkDocsのインストール手順](https://www.mkdocs.org/#installation)
に従ってインストールしてください。

ほとんどの場合、下記コマンドを実行するだけでインストールできます。

```sh
# python3環境です
$ pip install mkdocs
```

### Roots_homeをローカルでテストする

`Roots_home`をクローンし、webページを生成してブラウザで表示します。

```sh
$ git clone https://github.com/SSL-Roots/Roots_home
$ cd Roots_home
$ mkdocs serve
```

最後の`mkdocs serve`を実行したらブラウザで
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

[.github/workflows/deploy.yaml]("./.github/workflows/deploy.yaml")を編集すれば、
「`master`には置くけど、`gh-pages`にはマージしないファイル」を設定できます。
