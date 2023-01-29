class AddOverviewToSubdivisions < ActiveRecord::Migration[6.1]
  def change
    add_column :subdivisions, :overview, :string
  end
end
