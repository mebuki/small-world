class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :purpose

  belongs_to :user
  has_many :likes, dependent: :destroy
  has_one_attached :image


  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end


  with_options presence: true do
    validates :name, :event_date, :event_time, :place, :info, :image
    validates :purpose_id, numericality: { other_than: 0 }
  end
end
