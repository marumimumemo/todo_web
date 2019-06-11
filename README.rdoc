# README

### ToDoリストの開発

# 開発環境
・フロント: haml,scss,javascript
・バックエンド: Ruby
・フレームワーク: Ruby on rails
・DB: MySQL
・バージョン管理: Github

# 実装した機能
・タスク一覧表示
・タスク変更・閲覧
・タスク登録
・タスク削除

# DB-design

## tasks table
|Column|Type|Options|
|------|----|-------|
|title|string|index:true, null: false|
|body|text|null: false|
|scheduled|string|null: false|
|finished|string|-------|
|priority|string|null: false|
