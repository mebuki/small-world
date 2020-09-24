class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :purpose
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day

  belongs_to :user

  with_options presence: true do
    validates :name, :place, :info
    validates :purpose_id, :year_id, :month_id, :day_id, numericality: { other_than: 0 }
  end
end
