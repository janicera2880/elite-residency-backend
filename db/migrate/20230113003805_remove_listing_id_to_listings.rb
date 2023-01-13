class RemoveListingIdToListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :listing_id, :integer
  end
end
