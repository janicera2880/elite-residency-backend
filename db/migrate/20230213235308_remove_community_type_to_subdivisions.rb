class RemoveCommunityTypeToSubdivisions < ActiveRecord::Migration[6.1]
  def change
    remove_column :subdivisions, :community_type, :string
  end
end
