class RemoveForSaleToListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :for_sale, :boolean
  end
end
