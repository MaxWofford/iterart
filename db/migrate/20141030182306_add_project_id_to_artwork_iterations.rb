class AddProjectIdToArtworkIterations < ActiveRecord::Migration
  def change
    add_column :artwork_iterations, :project_id, :integer
    add_index :artwork_iterations, :project_id
  end
end
