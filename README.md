# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## usersテーブル

| Column            | Type      | Options                        |
| ----------------- | --------- | ------------------------------ |
| nickname          | string    | null: false                    |
| email             | string    | null: false                    |
| password          | string    | null: false                    |
| ciuntry_id        | integer   | null: false                    |
| prefecture_id     | integer   | null: false                    |

## Association
has_many :event
has_many :comments


## eventsテーブル

| Column            | Type      | Options                        |
| ----------------- | --------- | ------------------------------ |
| porpose_id        | integer   | null: false                    |
| name              | string    | null: false                    |
| place             | string    | null: false                    |
| time              | string    | null: false                    |
| info              | text      | null: false                    |
| comment           | references| null: false, foreign_key: true |

## Association
belongs_to :user
has_many :comments


## commentsテーブル

| Column            | Type      | Options                        |
| ----------------- | --------- | ------------------------------ |
| text              | text      | null: false                    |
| user              | references| null: false, foreign_key: true |
| event             | references| null: false, foreign_key: true |

## Association
belongs_to: user
belongs_to: event