class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :event

  validates :text, presene: true
end
