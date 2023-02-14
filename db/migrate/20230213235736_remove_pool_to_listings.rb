class RemovePoolToListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :pool, :boolean
  end
end
