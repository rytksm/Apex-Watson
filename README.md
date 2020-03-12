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

