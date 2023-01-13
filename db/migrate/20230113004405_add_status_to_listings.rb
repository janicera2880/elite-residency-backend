class AddStatusToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :status, :string
  end
end
