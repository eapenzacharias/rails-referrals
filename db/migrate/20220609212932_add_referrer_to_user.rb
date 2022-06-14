class AddReferrerToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :referrer, :integer, null: true, index: true
    add_foreign_key :users, :users, column: :referrer
  end
end
