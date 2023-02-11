class AddInactiveToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :inactive, :boolean
  end
end
