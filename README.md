# README

# ToDoリストの開発

# URL
https://todowebmr.herokuapp.com/

# 開発環境
- フロント: haml,scss,javascript
- バックエンド: Ruby
- フレームワーク: Ruby on rails
- DB: MySQL
- バージョン管理: Github
- クラウド： heroku

# 実装した機能
- タスク一覧表示
- タスク変更・閲覧
- タスク登録
- タスク削除

# DB-design

## tasks table
|Column|Type|Options|
|------|----|-------|
|title|string|index:true, null: false|
|body|text|null: false|
|scheduled|date|null: false|
|finished|date|-------|
|priority|string|null: false|
|unfinished|boolean|null: false,default: true|
