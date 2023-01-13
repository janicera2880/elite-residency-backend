class AddAccountIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :account_id, :integer
  end
end
