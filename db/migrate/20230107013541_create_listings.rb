class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :subdivision
      t.integer :list_price
      t.integer :year_built
      t.boolean :for_sale
      t.boolean :sold
      t.integer :storey
      t.integer :bedroom
      t.integer :bathroom
      t.integer :garage
      t.integer :building_size
      t.integer :lot_size
      t.string :architecture_style
      t.boolean :pool
      t.integer :listing_id
    end
  end
end
