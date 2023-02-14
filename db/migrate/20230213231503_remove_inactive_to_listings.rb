class RemoveInactiveToListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :inactive, :boolean
  end
end
