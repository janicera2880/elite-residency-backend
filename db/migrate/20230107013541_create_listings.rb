class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :image_url
      t.boolean :status
      t.integer :list_price
      t.integer :year_built
      t.integer :storey
      t.integer :bedroom
      t.integer :bathroom
      t.integer :garage
      t.integer :building_size
      t.integer :lot_size
      t.string :architecture_style
      t.boolean :pool
      t.integer :subdivision_id
    end
  end
end
