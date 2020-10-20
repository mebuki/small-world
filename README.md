# README

## SMALL WORLD
<img src=https://gyazo.com/0139337727a2a82bd0f2ddd77dc17d6d.jpg, width="80%">


## 概要

日本に住む外国人と海外に興味がある日本人とのコミュニティ作りの場所を提供するアプリです。<br>
言語交換、異文化交流、おでかけ、その他の4つのカテゴリーのイベントを作ることができます。


## URL

https://small-world-29783.herokuapp.com/

## テスト用アカウント

ユーザー名:マリ<br>
email:m@gmail.com<br>
password:mmm000

## 課題解決

日本に住む外国人と海外に興味がある日本人とのコミュニティの場を提供できればと思い、このアプリを作成しました。<br><br>

外国人　→　日本に住んでいるが、なかなか日本人の友達ができない。まだ日本語がうまくないから生活が不便。<br>
日本人　→　英語を喋れるようになりたい、異文化に興味がある。でも周り日本人ばっかり。<br><br>

このような方々に対して、出会いのきっかけを作れればと思いました。<br>
そのため、主に以下の4つのカテゴリーのイベントを作成できるようにしました。<br><br>

言語交換　　：　自分が学びたい言語を教えてもらう、また自分も相手の学びたい言語を教える<br>
異文化交流　：　海外の方に日本の文化を伝える、海外の文化について教えてもらう<br>
おでかけ　　：　カフェにいく、居酒屋ホッピング、スポーツをする等、気軽に出かけられるメンバーを集める<br>
その他　　　：　上記3つ以外で、何か困っていること、やりたいことがあれば、そのメンバーを集める<br>


## 要件定義

*ユーザー管理機能　deviseを用いて、ユーザーを管理。ニックネーム、Eメール、パスワード、出身国、住んでいる都道府県を入力。<br>
*イベント作成機能　4つのカテゴリーから1つを選択しイベントを作成。写真、タイトル、日時、場所、詳細を入力。<br>
*イベント検索機能　複数の条件でイベントを検索。カテゴリー、日付、時間で検索可能。<br>
*いいね機能　興味があるイベントにいいね（参加意思を表示）できる。また、いいねされた回数＝参加人数が把握できる。<br>
*ツイート機能　開催されたイベントに関してツイートを作成。写真、タイトル、詳細を入力。<br>
*コメント機能　ツイートに対してコメントができる。ユーザー名、コメントが反映される。<br>


## 今後実装予定の機能

*イベントの一覧表示の追加　直近のイベント（日付が近い、場所が近い）の表示<br>
*ユーザー情報の追加　ユーザーの写真、自己紹介等のプロフィール情報を追加できるようにする<br>





## テーブル設計

### usersテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| nickname          | string     | null: false                    |
| email             | string     | null: false                    |
| password          | string     | null: false                    |
| country_id        | integer    | null: false                    |
| prefecture_id     | integer    | null: false                    |

### Association
has_many :events <br>
has_many :tweets <br>
has_many :reviews <br>
has_many :likes <br>
has_many :like_events, through: :likes, source: :event 


### eventsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| purpose_id        | integer    | null: false                    |
| name              | string     | null: false                    |
| event_date        | string     | null: false                    |
| event_time        | string     | null: false                    |
| place             | string     | null: false                    |
| info              | text       | null: false                    |
| likes_count       | integer    |                                |
| user              | references | null: false, foreign_key: true |

### Association
belongs_to :user <br>
has_many :likes


### tweetsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association
belongs_to :user <br>
has_many :reviews


### reviewテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |
| tweet             | references | null: false, foreign_key: true |

### Association
belongs_to :user <br>
belongs_to :tweet
