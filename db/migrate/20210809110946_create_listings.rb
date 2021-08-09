class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.text :title
      t.text :description
      t.text :status
      t.decimal :price
      t.text :location
      t.references :seller_user, null: false
      t.references :buyer_user, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :listings, :users, column: :buyer_user_id
    add_foreign_key :listings, :users, column: :seller_user_id    
  end
end
