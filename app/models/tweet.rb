class Tweet < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :reviews

  with_options presence: true do
    validates :image, :text
  end
end
