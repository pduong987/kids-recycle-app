class RemoveSurnameAndNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :surname, :string
    remove_column :users, :name, :string
  end
end
