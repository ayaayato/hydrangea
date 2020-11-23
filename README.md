# テーブル設計

## users テーブル

| Column               | Type       | Options           |
| -------------------- | ---------- | ----------------- |
| email                | string     | null: false       |
| encrypted_password   | string     | null: false       |
| nickname             | string     | null: false       |
| birthday             | date       | null: false       |
| coin                 | integer    | null: false       |
| skin                 | references | foreign_key: true |

### Association

- has_many :flowers
- belongs_to :skin


## flowers テーブル

| Column         | Type       | Options                            |
| -------------- | ---------- | ---------------------------------- |
| title          | string     | null: false                        |
| tag            | integer    | null: false                        |
| image          | ActiveStorageで実装                              |
| user           | references | foreign_key: true                  |
| category_id    | integer    | null: false                        |
| subcategory_id | integer    | null: false                        |
| place          | string     |                                    |

### Association

- belongs_to :user


## skins テーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| medal       | string     | null: false       |
| cost        | integer    |                   |
| icon        |            |                   |
| head        |            |                   |
| main        |            |                   |
| foot        |            |                   |


### Association

- has_many :users