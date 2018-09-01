# クイックスタート

1. https://ngrok.com/ からLinuxのNgrokをダウンロードする
1. 上記ページの右辺に`unzip /path/to/ngrok.zip`がどーたらとあるが、この方法では行わない。ダウンロードするということだけ考える
1. windowとして普通にzipファイルを解凍。中身の`ngrok`という拡張子なしのデータが出てくるので、このディレクトリに置いておく
1. `www/page.py`は好きなものに改良してよいが、`page.py`の名前は変えない。
1. `docker-compose up -d`をする。
1. `docker exec -it test_flask_ngrok_ctr ngrok http 192.168.99.10:3031`というコマンドをたたく。
1. 下記のような表示になる。`Forwarding`が２つあるが、`http`と`https`でわかれている。
1. `http://2ef3b4a8.ngrok.io` or `https://2ef3b4a8.ngrok.io` をブラウザのURLに張り付けると`www/page.py`の内容が表示される。
　　（上記URLは仮なので、ここから飛んでも見ることは出来ない）
```

ngrok by @inconshreveable                                                                               (Ctrl+C to quit)                                                                                                                        Session Status                online
Session Expires               7 hours, 59 minutes
Version                       2.2.8
Region                        United States (us)
Web Interface                 http://127.0.0.1:4040
Forwarding                    http://2ef3b4a8.ngrok.io -> localhost:3031
Forwarding                    https://2ef3b4a8.ngrok.io -> localhost:3031

Connections                   ttl     opn     rt1     rt5     p50     p90
                              2       0       0.02    0.01    0.03    0.03
                                                                                                                        HTTP Requests

```
`www/page.py`の内容が表示されてるはず。
