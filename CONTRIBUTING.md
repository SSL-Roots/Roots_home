# Contribution Guide

Roots_homeの編集に協力して頂きありがとうございます。

ざっくりとしたルールをここに記載します。

- PR、issue大歓迎です。
- 下記の手順に従って**ローカルテスト**した後にPRを作成してください
- その他、細かいルールは下記を参照してください

## ローカルでテストする

roots_homeの見栄えをローカルでチェックしてから、GitHubにPushしたいよね！

### 環境設定

参考：https://docs.github.com/ja/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll

Jekillをインストールする。

(jekillだけじゃなく、rubyとかbundlerも入るよ)

参考：https://jekyllrb.com/docs/installation/

```sh
$ sudo apt-get install ruby-full build-essential zlib1g-dev
```

gem (パッケージマネージャ)でroot権限を使わないように設定

```sh
# bashユーザはこちら
$ echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
$ echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
$ echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
$ source ~/.bashrc

# zshユーザはこちら

$ echo '# Install Ruby Gems to ~/gems' >> ~/.zshrc
$ echo 'export GEM_HOME="$HOME/gems"' >> ~/.zshrc
$ echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.zshrc
$ source ~/.zshrc
```

jekillとbundlerをインストール

```sh
$ gem install jekyll bundler
```

---

私はbundlerのインストール手順を間違えました。

すでに`~/.bundle`ディレクトリが**root権限**で作成された場合は削除しましょう。

```sh
$ sudo rm -rf ~/.bundle
```

### ローカルテストのテスト

Jekillテーマの一つであるcaymanをローカルで表示してみましょう。

参考：https://github.com/pages-themes/cayman

```sh
$ git clone https://github.com/pages-themes/cayman
$ cd cayman
# スクリプト実行。sudo いらないからね！！！
# sudoつけろ言われたら.bundleディレクトリがrootで作られちゃってるかも
$ .script/bootstrap
$ bundle exec jekyll serve
```

最後の`bundle exec`を実行したらブラウザで[localhost:4000](http://localhost:4000)にアクセスしましょう。

### Roots_homeをローカルでテストする

roots_homeをクローンして、依存関係をインストールして、やってみよう。

```sh
# RootsのメンバーならSSHでクローンできるよね？
$ git clone git@github.com:SSL-Roots/Roots_home.git
# できなかったらこっちで
$ git clone https://github.com/SSL-Roots/Roots_home

$ cd Roots_home
# 依存関係をインストール
$ bundle install
$ bundle exec jekyll serve
```

最後の`bundle exec`を実行したらブラウザで[localhost:4000](http://localhost:4000)にアクセスしましょう。

おつかれまさでした！

## Roots_homeを編集する

編集する際はここを見てね。

### 作成するファイルについて

**HTML、CSS、なにそれ？**

**Markdown**でコンテンツを作ろうね

### ブランチについて

`master`ブランチにPushすると、GitHub Actionsでスクリプトが実行され、
GitHubサーバ上の`gh-pages`ブランチへマージされます。

実際にWebsiteとして表示されるのは`gh-pages`のコンテンツです。

[.github/workflows/deploy.yaml]("./.github/workflows/deploy.yaml")を編集すれば、
「`master`には置くけど、`gh-pages`にはマージしないファイル」を設定できます。

### ディレクトリについて

ホームディレクトリには`README.md(メインページ)`と
`404.md(ページが見つからないときに表示されるページ)`のみを置きます。

---

`README.md`からリンクされるページ（1階層下のページ)は`docs`ディレクトリにファイルを保存します。
`docs`ディレクトリはGitHub Pagesでよくある役割と**違う**使い方をしています。

`docs`ディレクトリには更にディレクトリがあります。
しかし、それ以上ディレクトリを深くしないでください。
リンクが難しくなるのと、メンテが大変になるのを防ぐためです。

---


`images`ディレクトリには画像を保存します。
`images`ディレクトリにも階層を設けて画像を管理する予定です。

---