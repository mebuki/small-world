class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :purpose
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day
  belongs_to_active_hash :day_of_week
  belongs_to_active_hash :event_time

  belongs_to :user
  # has_many :comments

  with_options presence: true do
    validates :name, :place, :info
    validates :purpose_id, :year_id, :month_id, :day_id, :day_of_week_id, :event_time_id, numericality: { other_than: 0 }
  end
end
