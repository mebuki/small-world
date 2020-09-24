class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :purpose

  with_options presence: true do
    validates :name, :place, :time, :info
    validates :purpose_id, numericality: { other_than: 0 }
  end
end
