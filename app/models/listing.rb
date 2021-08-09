class Listing < ApplicationRecord
  belongs_to :buyer_user, class_name: 'User', optional: true
  belongs_to :seller_user, class_name: 'User'
  belongs_to :category  
end
