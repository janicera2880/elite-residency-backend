class ChangeDatatypeForListPriceToListings < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :list_price, :float
  end
end
