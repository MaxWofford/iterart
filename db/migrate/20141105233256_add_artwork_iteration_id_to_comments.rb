class AddArtworkIterationIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :artwork_iteration_id, :integer
  end
end
