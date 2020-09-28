class Tweet < ApplicationRecord

  has_one_attached :image
  belongs_to :user

  with_options presence: true do
    validates :image, :text
  end
end
