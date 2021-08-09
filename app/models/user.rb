class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buyer_user_listings, class_name: 'Listing', foreign_key: 'buyer_user_id'
  has_many :seller_user_listings, class_name: 'Listing', foreign_key: 'seller_user_id'         
end
