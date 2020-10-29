# README

## SMALL WORLD
<img src=https://gyazo.com/0139337727a2a82bd0f2ddd77dc17d6d.jpg, width="60%">


## 概要

日本に住む外国人と海外に興味がある日本人とのコミュニティ作りの場所を提供するアプリです。<br>
言語交換、異文化交流、おでかけ、その他の4つのカテゴリーのイベントを作ることができます。<br><br><br>


## URL

アプリはこちら ⇨ [small world](http://54.150.90.203/) <br><br>

## テスト用アカウント

ユーザー名 : マリ <br>
email    : m@gmail.com <br>
password : mmm000 <br><br><br>

## 課題解決

日本に住む外国人と海外に興味がある日本人とのコミュニティの場を提供できればと思い、このアプリを作成しました。<br><br>

外国人　→　日本に住んでいるが、なかなか日本人の友達ができない。まだ日本語がうまくないから生活が不便。<br>
日本人　→　英語を喋れるようになりたい、異文化に興味がある。でも周り日本人ばっかり。<br><br>

このような方々に対して、出会いのきっかけを作れればと思いました。<br>
そのため、主に以下の4つのカテゴリーのイベントを作成できるようにしました。<br><br>

1, 言語交換　　：　自分が学びたい言語を教えてもらう、また自分も相手の学びたい言語を教える <br>
2, 異文化交流　：　海外の方に日本の文化を伝える、海外の文化について教えてもらう <br>
3, おでかけ　　：　カフェにいく、居酒屋ホッピング、スポーツをする等、気軽に出かけられるメンバーを集める <br>
4, その他　　　：　上記3つ以外で、何か困っていること、やりたいことがあれば、そのメンバーを集める <br><br><br>



## アプリの使い方

① ユーザーを登録する<br>
② イベントを作成する<br>
③ 参加したいイベントを探す<br>
④ 参加の意思表示（いいね）をする<br>
⑤ イベント終了後、ツイートを投稿する<br>
⑥ ツイートに関してコメントする<br><br><br>


## アプリの機能

### ■ユーザー管理機能
 deviseを用いて、ユーザーを管理<br>
 ニックネーム、Eメール、パスワード、出身国、住んでいる都道府県を入力する<br><br>
<img src=500a5c9e78ca8491278d71b555bb0c6e.gif>
<br><br>

### ■イベント作成機能
 4つのカテゴリーから1つを選択しイベントを作成できる<br>
 写真、タイトル、日時、場所、詳細を入力する<br><br>
<img src=abeb8abdeba80f46975059bc87598573.gif>
<br><br>

### ■イベント検索機能
 複数の条件でイベントを検索できる<br>
 カテゴリー、日付、時間で検索可能<br><br>
<img src=38d16363ec2eb553bff82ea480eeaeb1.gif>
<br><br>

### ■いいね機能
 興味があるイベントにいいね（参加意思を表示）できる<br>
 また、いいねされた回数＝参加人数が把握できる<br><br>
<img src=26abea569223e21a4c381b11dd74028d.gif>
<br><br>

### ■ツイート機能
 開催されたイベントに関してツイートを作成できる<br>
 写真、タイトル、詳細を入力する<br><br>
<img src=4f78a59c3d90db617a9041e501f949f6.gif>
<br><br>

### ■コメント機能
 ツイートに対してコメントができる<br>
 ユーザー名、コメントが反映される<br><br>
<img src=600b8a2c9c94fbd0ca881f445d9fcfa6.gif>
<br><br><br>



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
has_many :like_events, through: :likes, source: :event <br><br>


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
has_many :likes <br><br>


### tweetsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association
belongs_to :user <br>
has_many :reviews <br><br>


### reviewテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |
| tweet             | references | null: false, foreign_key: true |

### Association
belongs_to :user <br>
belongs_to :tweet <br><br>


## 開発環境
Ruby / Ruby on Rails / MySQL / Github <br>
AWS / Visual Studio Code
