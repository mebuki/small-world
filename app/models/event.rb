class Event < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :purpose

  with_options presence: true do
    validates :name, :place, :time, :info
    validates :purpose_id, numericality: { other_than: 0 }
  end
end
