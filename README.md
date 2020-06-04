# このリポジトリについて

例外処理の挙動について、rakeタスクを通じて確かめるためのリポジトリです。


## 使い方
1. リポジトリをクローンする
2. `rails db:setup`
3. `rake distribute_ticket:increment`,  `rake distribute_ticket:transact`, `rake distribute_ticket:rescue`をそれぞれ試す

## Usersテーブル
|columns|type|options|
|-------|----|-------|
|name|string|null: false|
|ticket_count|integer||

## 決定済仕様
・ユーザーは、チケットを所持している
・チケットはゲームをプレイする度に1つ消費する
・アプリケーションに障害が発生してサービスが止まってしまった場合、障害解消後に全ユーザーに補償のチケットを10枚発行する
