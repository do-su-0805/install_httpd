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

```
httpd-2.4.29/
├── apr-1.6.3
├── apr-util-1.6.1
├── httpd-2.4.29
└── pcre-8.41
```
