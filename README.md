## アプリケーション名
- Hydrangea  

## アプリケーション概要
- SNSに疲れた人への画像投稿閲覧サービス  

## URL
- https://hydrangea1008.herokuapp.com/  

## テスト用アカウント
- Email: sample@sample.com
- Pass: sample  


## 利用方法
- ログイン、新規投稿、レベルアップ、検索、お気に入り投稿追加、お気に入りユーザー追加、スキン入手と変更  


## 目指した課題解決
- 従来のSNSにある顕示欲、マウント、否定、センシティブな主義主張から隔たれた純粋な自分の趣味を追求する画像投稿サービス  


## 洗い出した機能
### ユーザー管理機能
- ユーザーによるアプリケーションにする為
### 画像投稿機能
- 趣味や気に入った風景の画像を投稿する為
### 投稿編集削除機能
- 間違った投稿を編集、削除できる様にする為
### タグ機能
- 自由な情報と紐づける為
### スキン機能
- ゲーミングにより自主性を喚起する為。気分転換を測る為。
### お気に入りユーザー機能
- 趣味が似ている投稿を可視化する為
### お気に入り投稿機能
- 気に入った画像を定期的に見ることができる様にする為
### 投稿一覧表示機能
- 自分とお気に入りユーザーによる投稿のみを表示し、一目で好きな投稿だけを確認できる様にする為
### 検索機能
- 好きな投稿を探すことができる様にする為  

## 実装予定の機能
- スキンによる背景の変更　季節限定スキンの実装　ポイント機能の実装とそれにより入手できるスキンの実装　Pay.jpを用いたプレミアムスキンの実装　特定の条件を満たした場合に入手することができるスキンの実装  

## ローカル動作環境
- ruby 2.6.5p114
- Rails 6.0.3.4  

# テーブル設計

## users テーブル

| Column               | Type       | Options           |
| -------------------- | ---------- | ----------------- |
| email                | string     | null: false       |
| encrypted_password   | string     | null: false       |
| nickname             | string     | null: false       |
| birthday             | date       | null: false       |
| coin                 | integer    | null: false       |
| icon_ids             | integer    | null: false       |

### Association

- has_many :flowers
- belongs_to :skin, through: :orders
- has_many :favos
- has_many :orders
- has_many :loves


## flowers テーブル

| Column         | Type       | Options                            |
| -------------- | ---------- | ---------------------------------- |
| title          | string     | null: false                        |
| image          | ActiveStorageで実装                              |
| user           | references | foreign_key: true                  |
| category_id    | integer    | null: false                        |
| subcategory_id | integer    | null: false                        |
| place          | string     |                                    |

### Association

- belongs_to :user
- has_many :flower_tag_relations, dependent: :destroy
- has_many :tags, through: :flower_tag_relations
- has_many :favos, dependent: :destroy


## skins テーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| medal       | string     | null: false       |
| cost        | integer    |                   |
| price       | integer    |                   |
| icon        | binary     |                   |


### Association

- has_many :users, through: :orders
- has_many :orders


## tags テーブル

| Column      | Type       | Options                           |
| ----------- | ---------- | --------------------------------- |
| tag_name    | string     | null: false   uniqueness: true    |


### Association

- has_many :flower_tag_relations
- has_many :flowers, through: :flower_tag_relations


## flower_tag_relations テーブル

| Column               | Type       | Options           |
| -------------------- | ---------- | ----------------- |
| flower               | references | foreign_key: true |
| tag                  | references | foreign_key: true |

### Association

- belongs_to :flower
- belongs_to :tag


## orders テーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| skin        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :skin


## loves テーブル

| Column      | Type       | Options                |
| ----------- | ---------- | ---------------------- |
| user        | references | foreign_key: true      |
| like        | references | foreign_key: 'like_id' |

### Association

- belongs_to :user
- belongs_to :like, class_name: 'User'


## favos テーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| flower      | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :flower

