class Like < ApplicationRecord

  belongs_to :user
  belongs_to :event, counter_cache: :likes_count
  
end
