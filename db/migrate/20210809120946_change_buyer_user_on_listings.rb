class ChangeBuyerUserOnListings < ActiveRecord::Migration[6.0]
  def change
    change_column :listings, :buyer_user_id, :bigint, :null => true
  end
end
