# install_httpd
one step for install httpd (easy settings)

# これは何

* LT 解説に面倒になったので、ぽっちとなで httpd をとりあえず、既存環境に影響がないようにインストールします。

# 使い方

* git clone してきます。

* `install_httpd.sh` を実行します。

    * 強制的に、一つ上のフォルダに、 `httpd_(その時の指定version)` フォルダを作成します。
    * 指定version は、`setenv.sh` に記載されています。
    ```
    (target dir)/
    ├── httpd-2.4.29
    └── install_httpd
    ```

* httpd.conf を編集します。

    * 場所は、インストール先の `httpd-(version)/conf/httpd.conf` です
    * `Listen ` のあとをお好きなポート/お好きなIPに。
    * (すでに動いている場合は、) httpd とかを止めておくといいかもしれません。
         * 要はIP被らずにポートも被らなければOKです。

* 起動させます。

    ```
    $ sudo ../httpd-2.4.29/httpd-2.4.29/bin/httpd
    $ curl -s localhost
    <html><body><h1>It works!</h1></body></html>
    ```

# 注意

* 有無判定を入れていますが、 `gcc` `g++` `tar` `curl` `make` コマンドが必要です。

* 有無判定ができなかったので入れませんが、apr-util を build する時に、 `expat.h` が必要です。

    * 各ディストリビューションに合わせてインストールしておいてください。 
    
        * ubuntu の場合は `sudo apt install libexpat1-dev`

        * CentOS の場合は、 `sudo yum install expat-devel`

# スクリプト構造

```
install_httpd/
├── README.md
├── install_httpd.sh
└── scripts
    ├── build.sh
    ├── download.sh
    └── setenv.sh
```

# 設置されるファイル構造

* `httpd-(指定version)` のフォルダの中に、下記のように設置されます。

    * ちょっといい方法が思いつかなかったのでややこしいですが、その中の `httpd-(指定version)` の中が実行できます。

```
httpd-2.4.29/
├── apr-1.6.3
├── apr-util-1.6.1
├── httpd-2.4.29
└── pcre-8.41
```
