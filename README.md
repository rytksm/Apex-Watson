# Apex-Watson
Connect to Watson APIs from ACMS Apex using Web API option.
ACMS ApexのWeb API クライアントオプションを使ってWatson APIに接続します。

今のところ、次のAPIが実装されています。
* Speech to Text
  * Synchronous
    * recognize
      ただし、multipartは未対応
  * Asynchronous
    * register_callback
    * unregister_callback
    * recognitions

# 前提条件
## 定義のインポート
インポート用のシェルスクリプトは、次の前提で作られています。
* オペレーターIDは"OP_WtsnAdmin"である
* .passwordsに上記オペレーターとそのパスワードが設定されている
  (「リファレンス_コマンド編.pdf 1.3.2 認証ファイルを利用した認証」を参照)

