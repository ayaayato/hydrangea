## アプリケーション名
- Hydrangea  

## 概要
- SNSに疲れた人への画像投稿閲覧サービス  

## 本番環境
- https://hydrangea1008.herokuapp.com/  
テスト用アカウント
- Email: sample@sample.com
- Pass: sample  


## 制作背景（意図）
- 既存のSNSには様々な利点がある反面、ユーザー間に生まれる顕示欲、マウント、否定、センシティブな主義主張により純粋な自分の趣味を公開する上での障害があると考えました。
現在利用しているサービスに取って代わろうといった考え方でなく、そういったストレスが付き纏う中で1日に1分だけでも夢中になれるような、気兼ね無く好きな気持ちを追求できるアプリケーションを制作したいと考えました。

- ログイン、新規投稿、レベルアップ、検索、お気に入り投稿追加、お気に入りユーザー追加、スキン入手と変更  


## 利用方法
- ヘッダー右上からログインor新規登録
<img width="1436" alt="bd213f3f93324d2fc52b263e3e07e26c" src="https://user-images.githubusercontent.com/73512438/103711104-08069700-4ffa-11eb-9879-8138c70139c9.png">
<br>

- ログイン後、トップページへ遷移します。トップページには自分の投稿とお気に入りユーザーの投稿が最大100件表示されます。
![ea6ece18abd1a48f67734f4dc335ba77](https://user-images.githubusercontent.com/73512438/103716429-5faaff80-5006-11eb-8bd2-38435413deb0.jpg)
<br>

- ヘッダー右上の若葉マークから新規投稿モーダルを表示できます。
![9cfa1f537c83f18e258a1d925b5dd887](https://user-images.githubusercontent.com/73512438/103716627-e233bf00-5006-11eb-904d-f64aa75b2c45.jpg)
<br>

- ヘッダー右上の虫眼鏡マークから投稿検索モーダルを表示できます。
![0a30ca924691f21c659032ca93610834](https://user-images.githubusercontent.com/73512438/103716737-1ad39880-5007-11eb-990a-53b10a500367.jpg)
<br>

- ヘッダー右上のユーザー名をクリックすることで自身のユーザーページへと遷移します。ここではユーザー情報の編集、入手したユーザーアイコンの変更、自身の投稿の閲覧を行うことができます。
![cf1012a4e98888da59d3de06595d3be7](https://user-images.githubusercontent.com/73512438/103717136-0b088400-5008-11eb-82ef-c6e774d588fe.jpg)
<br>

- ヘッダー右上の星マークにカーソルを合わせると自身のレベルを確認することができます。レベルは新規投稿後にヘッダー右上に出現する矢印マークをクリックすることで上昇させることができます。レベルはアイコンの入手に使用します。
<img width="1434" alt="スクリーンショット 2021-01-06 10 17 33" src="https://user-images.githubusercontent.com/73512438/103717400-bf0a0f00-5008-11eb-8bab-0774b909a930.png">
<br>

- ヘッダー右上の星マークをクリックするとスキン（ユーザーアイコン）の一覧画面へと遷移します。各アイコンをクリックすることで入手ページへ遷移し、必要レベルを満たしていれば入手ボタンが表示されます。
<img width="1431" alt="503666914f33276c5ae61abea77ca2a7" src="https://user-images.githubusercontent.com/73512438/103717589-38a1fd00-5009-11eb-9dc6-bbdd73e1759f.png">
<br>


- トップページ、検索結果等から投稿をクリックすると詳細ページへと遷移します。自身の投稿では編集、削除ボタンが表示されます。別ユーザーの投稿ではお気に入りボタン（ハートマーク）が表示され、お気に入り登録することができます。ハートマークは非お気に入り時は灰色、お気に入り時はピンク色になります。ヘッダー左上の紫色のアイコンからお気に入りした投稿の一覧ページへと遷移し、閲覧できます。
![5a1adb94bab263ec960f2ef034f0bd01](https://user-images.githubusercontent.com/73512438/103718472-2aa0ac00-500a-11eb-8888-d84ba9460223.jpg)
![dc9d9562330918a38c0ecd7a58f276c2](https://user-images.githubusercontent.com/73512438/103718996-66884100-500b-11eb-97f4-87d8552c817a.jpg)
<br>

- 詳細ページからユーザー名をクリックするとユーザー詳細ページへと遷移します。ここではユーザーのお気に入り登録をすることができます。LOVEボタンをクリックすることでユーザーをお気に入り登録することができ、登録したユーザーはヘッダー左上の赤色のアイコンから一覧ページへと遷移し、閲覧できます。LOVEボタンは非お気に入り時は灰色、お気に入り時はピンク色になります。
![bb380870287a9895fa4d91979bb7713f](https://user-images.githubusercontent.com/73512438/103718703-c0d4d200-500a-11eb-9896-8e4d59c12763.jpg)
<br>

- ヘッダー左上の青色のアイコンをクリックするとトップページへと遷移します。画面右下の手紙アイコンからはお問い合わせフォームへと遷移します。

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

