class RemoveStatusToListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :status, :boolean
  end
end
