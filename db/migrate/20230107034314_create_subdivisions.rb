class CreateSubdivisions < ActiveRecord::Migration[6.1]
  def change
    create_table :subdivisions do |t|
      t.string :name
      t.string :community_type
    end
  end
end
