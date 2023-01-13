class AddSubdivisionIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :subdivision_id, :integer
  end
end
