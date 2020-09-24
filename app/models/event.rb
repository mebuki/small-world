class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :purpose

  belongs_to :user

  with_options presence: true do
    validates :name, :time, :place, :info
    validates :purpose_id, numericality: { other_than: 0 }
  end
end
