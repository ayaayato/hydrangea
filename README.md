## アプリケーション名
### Hydrangea


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

