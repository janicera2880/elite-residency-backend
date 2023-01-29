class CreateSubdivisions < ActiveRecord::Migration[6.1]
  def change
    create_table :subdivisions do |t|
      t.string :image_url
      t.string :name
      t.string :community_type
      t.string :overview
    end
  end
end