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
has_many: user_events
has_many: events, through: user_events


## eventsテーブル

| Column            | Type      | Options                        |
| ----------------- | --------- | ------------------------------ |
| name              | string    | null: false                    |
| porpose_id        | integer   | null: false                    |
| where             | string    | null: false                    |
| when              | integer   | null: false                    |
| info              | integer   | null: false                    |
| comment           | references| null: false, foreign_key: true |

## Association
has_many: user_events
has_many: users, through: user_events
belongs_to: comments


## commentsテーブル

| Column            | Type      | Options                        |
| ----------------- | --------- | ------------------------------ |
| text              | text      | null: false                    |
| user              | references| null: false, foreign_key: true |
| event             | references| null: false, foreign_key: true |

## Association
belongs_to: user
belongs_to: event