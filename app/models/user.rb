class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :event_users
  has_many :events, through: :event_users

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country 
  belongs_to_active_hash :prefecture

  with_options presence: true do
    validates :nickname, :email, :password
    validates :country_id, :prefecture_id, numericality: { other_than: 0 }
  end

end
