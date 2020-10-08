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

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| nickname          | string     | null: false                    |
| email             | string     | null: false                    |
| password          | string     | null: false                    |
| country_id        | integer    | null: false                    |
| prefecture_id     | integer    | null: false                    |

## Association
has_many :events
has_many :tweets
has_many :reviews
has_many :likes
has_many :like_events, through: :likes, source: :event


## eventsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| purpose_id        | integer    | null: false                    |
| name              | string     | null: false                    |
| year_id           | integer    | null: false                    |
| month_id          | integer    | null: false                    |
| day_id            | integer    | null: false                    |
| day_of_week_id    | integer    | null: false                    |
| event_time_id     | integer    | null: false                    |
| place             | string     | null: false                    |
| info              | text       | null: false                    |
| likes_count       | integer    |                                |
| user              | references | null: false, foreign_key: true |

## Association
belongs_to :user
has_many :likes


## tweetsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

## Association
belongs_to :user
has_many :reviews



## reviewテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |
| tweet             | references | null: false, foreign_key: true |

## Association
belongs_to :user
belongs_to :tweet