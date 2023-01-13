class RemoveSubdivisionToListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :subdivision, :string
  end
end
