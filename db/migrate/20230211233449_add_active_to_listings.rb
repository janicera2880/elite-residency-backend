class AddActiveToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :active, :boolean
  end
end
